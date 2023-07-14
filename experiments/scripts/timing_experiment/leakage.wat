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
  (type (;6;)(func (param i64)))
  (import "env" "_mm_clflush" (func $__wasi_clflush_guestaddr (type 4)))
  (import "env" "printint" (func $printint (type 6)))
  (import "env" "_mm_clflush" (func $__wasi_clflush_hostaddr (type 4)))
  (import "env" "_mm_mfence" (func $__wasi_fence (type 1)))
  (import "env" "_rdtsc" (func $__wasi_rdtsc (type 5))) ;;rdtsc expects a pointer-to-u64 and will write the tsc value to that location
  (import "wasi_unstable" "fd_write" (func $writef (param $fd i32) (param $iovec i32) (param $len i32) (param $written i32) (result i32)))
  (table (;0;) 4 anyfunc)
  ;; (elem (i32.const 0) $flush $fread $ftrain)
  (memory (;0;) 2024 65535) ;; pages of 65536 bytes


    (func $short (local $times i32)
        (set_local $times (i32.const 10000))
        (loop $L0
            (i32.load (i32.const 4096))
            (drop)
            (set_local $times (i32.sub (get_local $times) (i32.const 1)))
            (br_if $L0 (get_local $times))
        )
    )


    (func $long (local $times i32)
        (set_local $times (i32.const 20000))
        (loop $L0
            (i32.load (i32.const 4096))
            (drop)
            (set_local $times (i32.sub (get_local $times) (i32.const 1)))
            (br_if $L0 (get_local $times))
        )
    )

   (func $main (export "main") (local $total_times i32)(local $times i32)(local $cache_threshold i64) (local $start_time i64) (local $end_time i64) (local $duration i64)
    ;;(call $initializeMemory)
    ;;(call $warmup)
    ;;(call $getThreshold)
    ;;(set_local $cache_threshold)
    (set_local $total_times (i32.const 1000))
    (loop $L0
        
        (loop $L2
            (call $readTimer)
            (set_local $start_time)
            ;; (drop)
            ;; Measure a long time operation
            (call $long)
            
            (call $readTimer)
            (set_local $end_time)
            
            (i64.sub (get_local $end_time ) (get_local $start_time))
            (set_local $duration)
            (get_local $duration)
            (call $output (i32.const 76 ))
            (call $printint)
            
            ;;(drop)
            ;; Measure then a short time operation
            (call $readTimer)
            (set_local $start_time)
            ;; (drop)
            ;; Measure a long time operation
            (call $short)
            
            (call $readTimer)
            (set_local $end_time)
            
            (i64.sub (get_local $end_time ) (get_local $start_time))
            (set_local $duration)
            (get_local $duration)
            (call $output (i32.const 115 ))
            (call $printint)
            (set_local $times (i32.sub (get_local $times) (i32.const 1)))
            (br_if $L2 (get_local $times))
        )
        (set_local $total_times (i32.sub (get_local $total_times) (i32.const 1)))
        (br_if $L0 (get_local $total_times))
    )
  )

  (func $readTimer (result i64)
    ;; call timer primitive, return i64
    (call $__wasi_rdtsc)
    ;;(drop)
    ;;(i64.load (i32.const 64))
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
    ;; assume $value <= 9999: it'll only print 10 digits
    (i64.div_u (get_local $value) (i64.const 100000000))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (i64.div_u (get_local $value) (i64.const 10000000))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (i64.div_u (get_local $value) (i64.const 1000000))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (i64.div_u (get_local $value) (i64.const 100000))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (i64.div_u (get_local $value) (i64.const 10000))
    (i64.add (i64.const 48))
    (i32.wrap_i64)
    (call $output)
    (i64.div_u (get_local $value) (i64.const 1000))
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
    ;; print endline
    
    (call $output (i32.const 10))
    (get_local $value)
  )
  


  (export "_start" (func $main))
  (export "memory" (memory 0))
)
(module
  ;; Declare a global variable `g` of type i32 and initialize it with value 42
  (import "env" "unlock" (func $unlock))
  (import "wasi_unstable" "fd_write" (func $writef (param $fd i32) (param $iovec i32) (param $len i32) (param $written i32) (result i32)))
  (memory (;0;) 2024 65535) ;; pages of 65536 bytes
  (global $g (mut i32) (i32.const 42))
  (global $g2 (mut i32) (i32.const 40))

  ;; Function to set the global `g` to a new value
  (func $set_g (param $new_val i32)
    (global.set $g
      (local.get $new_val)
    )
  )

  ;; Function to get the value of the global `g`
  (func $get_g 
    (global.get $g)
    drop
    (global.get $g2)
    drop
    (global.get $g)
    call $output
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

  ;; Set the start function of the module
  (start $get_g)

  ;; Export the functions so they can be accessed from outside the module
  (export "set_g" (func $set_g))
  (export "memory" (memory 0))
)
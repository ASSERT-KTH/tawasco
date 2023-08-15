(module
  ;; Declare a global variable `g` of type i32 and initialize it with value 42
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
    drop
    ;; to trigger spill reload
    i32.const 32
    i32.const 32
    i32.add
    i32.const 1111
    i32.const 32
    i32.add
    i32.const 3123
    i32.const 32
    i32.add
    i32.const 1111123
    i32.const 32
    i32.add


    i32.const 1111123
    i32.const 32
    i32.add

    i32.const 1111123
    i32.const 32
    i32.add


    i32.const 1111123
    i32.const 32
    i32.add

    i32.const 1111123
    i32.const 32
    i32.add

    i32.const 1111123
    i32.const 32
    i32.add

    i32.const 1111123
    i32.const 32
    i32.add

    i32.const 1111123
    i32.const 32
    i32.add

    i32.const 32
    i32.const 32
    i32.add


    i32.const 32
    i32.const 32
    i32.add

    i32.const 32
    i32.const 32
    i32.add

    i32.const 32
    i32.const 32
    i32.add

    i32.const 32
    i32.const 32
    i32.add

    i32.const 32
    i32.const 32
    i32.add

    i32.const 32
    i32.const 32
    i32.add

    i32.const 32
    i32.const 32
    i32.add

    i32.const 32
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    i32.add
    (global.set $g)
  )

  ;; Set the start function of the module
  (start $get_g)

  ;; Export the functions so they can be accessed from outside the module
  (export "set_g" (func $set_g))
)
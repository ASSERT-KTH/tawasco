(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (import "wasi_snapshot_preview1" "clflush_guestaddr" (func $fimport$0 (param i32) (result i32)))
 (import "wasi_snapshot_preview1" "clflush_hostaddr" (func $fimport$1 (param i32) (result i32)))
 (import "wasi_snapshot_preview1" "fence" (func $fimport$2 (result i32)))
 (import "wasi_snapshot_preview1" "rdtsc" (func $fimport$3 (param i32) (result i32)))
 (import "wasi_unstable" "fd_write" (func $fimport$4 (param i32 i32 i32 i32) (result i32)))
 (memory $0 2024 65535)
 (table $0 4 funcref)
 (elem $0 (i32.const 0) $14 $3 $7 $1)
 (export "main" (func $0))
 (export "ftrain" (func $1))
 (export "noopfunc" (func $2))
 (export "fread" (func $3))
 (export "_start" (func $0))
 (func $0
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (call $15)
  (call $13)
  (local.set $2
   (block (result i64)
    (local.set $3
     (call $10)
    )
    (nop)
    (local.get $3)
   )
  )
  (local.set $0
   (i32.const 30000)
  )
  (loop $label$1
   (call $6)
   (local.set $1
    (i32.const 100)
   )
   (loop $label$2
    (call $1
     (i32.const 1)
     (i32.const 99)
     (i32.const 99)
     (i64.const 99)
    )
    (local.set $1
     (i32.sub
      (local.get $1)
      (i32.const 1)
     )
    )
    (br_if $label$2
     (local.get $1)
    )
   )
   (call $8)
   (local.set $1
    (i32.const 10)
   )
   (loop $label$3
    (call_indirect (type $i32_i32_i32_i64_=>_none)
     (i32.const 2)
     (i32.const 99)
     (i32.const 99)
     (i64.const 99)
     (i32.const 1)
    )
    (call $4
     (local.get $2)
    )
    (local.set $1
     (i32.sub
      (local.get $1)
      (i32.const 1)
     )
    )
    (br_if $label$3
     (local.get $1)
    )
   )
   (local.set $0
    (i32.sub
     (local.get $0)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (local.get $0)
   )
  )
 )
 (func $1 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local.set $4
   (i32.const 99)
  )
  (local.set $7
   (i64.add
    (local.get $3)
    (i64.const 4294967295)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ne
      (local.get $4)
      (i32.const 0)
     )
    )
    (i32.store
     (i32.const 41)
     (i32.const 20)
    )
   )
   (block $label$3
    (block $label$4
     (block $label$5
      (br_table $label$5 $label$4 $label$3 $label$3
       (local.get $0)
      )
     )
     (i32.store
      (i32.add
       (i32.mul
        (i32.const 4093)
        (i32.const 2)
       )
       (i32.const 2)
      )
      (i32.const 4099)
     )
     (i32.store
      (i32.const 4091)
      (i32.const 4097)
     )
     (i32.store
      (i32.mul
       (i32.const 4193)
       (i32.const 2)
      )
      (i32.const 4099)
     )
     (i32.store
      (i32.mul
       (i32.const 4194)
       (i32.const 2)
      )
      (i32.const 4099)
     )
     (drop
      (i32.load
       (i32.const 100)
      )
     )
    )
    (i64.store
     (i32.const 100)
     (local.get $7)
    )
    (br_if $label$3
     (i32.eq
      (local.get $0)
      (i32.const 1)
     )
    )
    (local.set $5
     (call $5)
    )
    (local.set $6
     (i64.add
      (local.get $5)
      (i64.const 10)
     )
    )
    (local.set $5
     (i64.mul
      (local.get $5)
      (i64.const 2)
     )
    )
    (drop
     (i32.load
      (i32.mul
       (i32.add
        (i32.load
         (i32.mul
          (i32.add
           (i32.load
            (i32.const 339968)
           )
           (i32.const 255)
          )
          (i32.const 4096)
         )
        )
        (i32.wrap_i64
         (local.get $5)
        )
       )
       (i32.wrap_i64
        (local.get $6)
       )
      )
     )
    )
   )
   (br_if $label$1
    (i32.eq
     (local.get $0)
     (i32.const 1)
    )
   )
   (drop
    (call $5)
   )
  )
  (call $2)
  (call $2)
 )
 (func $2
 )
 (func $3 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local.set $4
   (i32.const 99)
  )
  (local.set $7
   (i64.add
    (local.get $3)
    (i64.const 4294967295)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ne
      (local.get $4)
      (i32.const 0)
     )
    )
    (i32.store
     (i32.const 41)
     (i32.const 20)
    )
   )
   (block $label$3
    (block $label$4
     (block $label$5
      (br_table $label$5 $label$4 $label$3 $label$3
       (local.get $0)
      )
     )
     (i32.store
      (i32.const 4096)
      (i32.const 4096)
     )
     (i32.store
      (i32.const 4095)
      (i32.const 4097)
     )
     (i32.store
      (i32.const 4094)
      (i32.const 4098)
     )
     (i32.store
      (i32.mul
       (i32.const 4093)
       (i32.const 2)
      )
      (i32.const 4099)
     )
    )
    (i64.store
     (i32.const 100)
     (local.get $7)
    )
    (local.set $5
     (call $5)
    )
    (local.set $6
     (i64.add
      (local.get $5)
      (i64.const 10)
     )
    )
    (local.set $5
     (i64.mul
      (local.get $5)
      (i64.const 2)
     )
    )
    (drop
     (i32.load
      (i32.mul
       (i32.add
        (i32.load
         (i32.mul
          (i32.and
           (i32.load
            (i32.const 339968)
           )
           (i32.const 255)
          )
          (i32.const 4096)
         )
        )
        (i32.wrap_i64
         (local.get $5)
        )
       )
       (i32.wrap_i64
        (local.get $6)
       )
      )
     )
    )
   )
   (br_if $label$1
    (i32.eq
     (local.get $0)
     (i32.const 2)
    )
   )
   (drop
    (call $5)
   )
  )
  (call $2)
  (call $2)
 )
 (func $4 (param $0 i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local.set $7
   (i32.const 256)
  )
  (local.set $4
   (i32.const 256)
  )
  (loop $label$1
   (local.set $4
    (i32.sub
     (local.get $4)
     (i32.const 1)
    )
   )
   (local.set $5
    (i32.and
     (i32.add
      (i32.mul
       (local.get $4)
       (i32.const 167)
      )
      (i32.const 13)
     )
     (i32.const 255)
    )
   )
   (local.set $6
    (i32.mul
     (local.get $5)
     (i32.const 4096)
    )
   )
   (drop
    (i32.load
     (block (result i32)
      (local.set $9
       (local.get $6)
      )
      (local.set $1
       (call $5)
      )
      (local.get $9)
     )
    )
   )
   (local.set $2
    (call $5)
   )
   (local.set $3
    (i64.sub
     (local.get $2)
     (local.get $1)
    )
   )
   (block $label$2
    (br_if $label$2
     (i64.gt_u
      (local.get $3)
      (local.get $0)
     )
    )
    (call $11
     (local.get $5)
    )
    (local.set $7
     (local.get $5)
    )
   )
   (call $7
    (local.get $6)
   )
   (br_if $label$1
    (local.get $4)
   )
  )
 )
 (func $5 (result i64)
  (drop
   (call $fimport$3
    (i32.const 64)
   )
  )
  (i64.load
   (i32.const 64)
  )
 )
 (func $6
  (drop
   (call $fimport$2)
  )
 )
 (func $7 (param $0 i32)
  (drop
   (call $fimport$0
    (local.get $0)
   )
  )
 )
 (func $8
  (local $0 i32)
  (local.set $0
   (i32.const 256)
  )
  (loop $label$1
   (local.set $0
    (i32.sub
     (local.get $0)
     (i32.const 1)
    )
   )
   (call $7
    (i32.mul
     (local.get $0)
     (i32.const 4096)
    )
   )
   (br_if $label$1
    (local.get $0)
   )
  )
 )
 (func $9
  (local $0 i32)
  (local.set $0
   (i32.const 256)
  )
  (loop $label$1
   (local.set $0
    (i32.sub
     (local.get $0)
     (i32.const 1)
    )
   )
   (call $7
    (i32.mul
     (local.get $0)
     (i32.const 4096)
    )
   )
   (br_if $label$1
    (local.get $0)
   )
  )
 )
 (func $10 (result i64)
  (local $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (i64.const 550)
 )
 (func $11 (param $0 i32)
  (i32.store
   (i32.const 0)
   (i32.const 128)
  )
  (i32.store
   (i32.const 128)
   (local.get $0)
  )
  (i32.store
   (i32.const 132)
   (i32.const 10)
  )
  (i32.store
   (i32.const 136)
   (i32.const 0)
  )
  (i32.store
   (i32.const 4)
   (i32.const 2)
  )
  (drop
   (call $fimport$4
    (i32.const 1)
    (i32.const 0)
    (i32.const 1)
    (i32.const 8)
   )
  )
 )
 (func $12 (param $0 i64) (result i64)
  (call $11
   (i32.wrap_i64
    (i64.add
     (i64.div_u
      (local.get $0)
      (i64.const 1000)
     )
     (i64.const 48)
    )
   )
  )
  (call $11
   (i32.wrap_i64
    (i64.add
     (i64.div_u
      (i64.rem_u
       (local.get $0)
       (i64.const 1000)
      )
      (i64.const 100)
     )
     (i64.const 48)
    )
   )
  )
  (call $11
   (i32.wrap_i64
    (i64.add
     (i64.div_u
      (i64.rem_u
       (local.get $0)
       (i64.const 100)
      )
      (i64.const 10)
     )
     (i64.const 48)
    )
   )
  )
  (call $11
   (i32.wrap_i64
    (i64.add
     (i64.rem_u
      (local.get $0)
      (i64.const 10)
     )
     (i64.const 48)
    )
   )
  )
  (local.get $0)
 )
 (func $13
  (local $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local.set $0
   (i32.const 256)
  )
  (loop $label$1
   (local.set $0
    (i32.sub
     (local.get $0)
     (i32.const 1)
    )
   )
   (drop
    (i32.load
     (i32.mul
      (local.get $0)
      (i32.const 4096)
     )
    )
   )
   (call $6)
   (call $7
    (i32.mul
     (local.get $0)
     (i32.const 4096)
    )
   )
   (br_if $label$1
    (local.get $0)
   )
  )
  (local.set $0
   (i32.const 10000)
  )
  (loop $label$2
   (local.set $1
    (call $5)
   )
   (local.set $2
    (call $5)
   )
   (local.set $3
    (i64.add
     (i64.sub
      (local.get $2)
      (local.get $1)
     )
     (local.get $3)
    )
   )
   (local.set $0
    (i32.sub
     (local.get $0)
     (i32.const 1)
    )
   )
   (br_if $label$2
    (local.get $0)
   )
  )
 )
 (func $14 (param $0 i32)
  (block $label$1
   (br_if $label$1
    (i32.ne
     (local.get $0)
     (i32.const 0)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.ne
     (local.get $0)
     (i32.const 1)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.ne
     (local.get $0)
     (i32.const 2)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.ne
     (local.get $0)
     (i32.const 3)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.ne
     (local.get $0)
     (i32.const 4)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.ne
     (local.get $0)
     (i32.const 5)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.ne
     (local.get $0)
     (i32.const 6)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.ne
     (local.get $0)
     (i32.const 7)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.ne
     (local.get $0)
     (i32.const 8)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.ne
     (local.get $0)
     (i32.const 9)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.ne
     (local.get $0)
     (i32.const 10)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.ne
     (local.get $0)
     (i32.const 11)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$13
   (br_if $label$13
    (i32.ne
     (local.get $0)
     (i32.const 12)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$14
   (br_if $label$14
    (i32.ne
     (local.get $0)
     (i32.const 13)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$15
   (br_if $label$15
    (i32.ne
     (local.get $0)
     (i32.const 14)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$16
   (br_if $label$16
    (i32.ne
     (local.get $0)
     (i32.const 15)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$17
   (br_if $label$17
    (i32.ne
     (local.get $0)
     (i32.const 16)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$18
   (br_if $label$18
    (i32.ne
     (local.get $0)
     (i32.const 17)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$19
   (br_if $label$19
    (i32.ne
     (local.get $0)
     (i32.const 18)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$20
   (br_if $label$20
    (i32.ne
     (local.get $0)
     (i32.const 19)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$21
   (br_if $label$21
    (i32.ne
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$22
   (br_if $label$22
    (i32.ne
     (local.get $0)
     (i32.const 21)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$23
   (br_if $label$23
    (i32.ne
     (local.get $0)
     (i32.const 22)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$24
   (br_if $label$24
    (i32.ne
     (local.get $0)
     (i32.const 23)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$25
   (br_if $label$25
    (i32.ne
     (local.get $0)
     (i32.const 24)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$26
   (br_if $label$26
    (i32.ne
     (local.get $0)
     (i32.const 25)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$27
   (br_if $label$27
    (i32.ne
     (local.get $0)
     (i32.const 26)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$28
   (br_if $label$28
    (i32.ne
     (local.get $0)
     (i32.const 27)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$29
   (br_if $label$29
    (i32.ne
     (local.get $0)
     (i32.const 28)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$30
   (br_if $label$30
    (i32.ne
     (local.get $0)
     (i32.const 29)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$31
   (br_if $label$31
    (i32.ne
     (local.get $0)
     (i32.const 30)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$32
   (br_if $label$32
    (i32.ne
     (local.get $0)
     (i32.const 31)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$33
   (br_if $label$33
    (i32.ne
     (local.get $0)
     (i32.const 32)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$34
   (br_if $label$34
    (i32.ne
     (local.get $0)
     (i32.const 33)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
  (block $label$35
   (br_if $label$35
    (i32.ne
     (local.get $0)
     (i32.const 34)
    )
   )
   (i32.store
    (i32.const 41)
    (i32.const 20)
   )
  )
 )
 (func $15
  (local $0 i32)
  (local.set $0
   (i32.const 256)
  )
  (loop $label$1
   (local.set $0
    (i32.sub
     (local.get $0)
     (i32.const 1)
    )
   )
   (i32.store
    (i32.mul
     (local.get $0)
     (i32.const 4096)
    )
    (local.get $0)
   )
   (call $6)
   (call $7
    (i32.mul
     (local.get $0)
     (i32.const 4096)
    )
   )
   (br_if $label$1
    (local.get $0)
   )
  )
 )
)


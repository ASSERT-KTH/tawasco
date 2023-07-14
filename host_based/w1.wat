(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32 i64)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i64)))
  (type (;7;) (func (result i64)))
  (type (;8;) (func (param i64) (result i64)))
  (import "wasi_snapshot_preview1" "clflush_guestaddr" (func (;0;) (type 2)))
  (import "wasi_snapshot_preview1" "clflush_hostaddr" (func (;1;) (type 2)))
  (import "wasi_snapshot_preview1" "fence" (func (;2;) (type 0)))
  (import "wasi_snapshot_preview1" "rdtsc" (func (;3;) (type 2)))
  (import "wasi_unstable" "fd_write" (func (;4;) (type 5)))
  (func (;5;) (type 1)
    (local i32 i32 i64)
    call 20
    call 18
    call 15
    nop
    local.set 2
    i32.const 30000
    local.set 0
    loop ;; label = @1
      call 11
      i32.const 100
      local.set 1
      loop ;; label = @2
        i32.const 1
        i32.const 99
        i32.const 99
        i64.const 99
        call 6
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        local.get 1
        br_if 0 (;@2;)
      end
      call 13
      i32.const 10
      local.set 1
      loop ;; label = @2
        i32.const 2
        i32.const 99
        i32.const 99
        i64.const 99
        i32.const 1
        call_indirect (type 4)
        local.get 2
        call 9
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        local.get 1
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 1
      i32.sub
      local.set 0
      local.get 0
      br_if 0 (;@1;)
    end
  )
  (func (;6;) (type 4) (param i32 i32 i32 i64)
    (local i32 i64 i64 i64)
    i32.const 99
    local.set 4
    local.get 3
    i64.const 4294967295
    i64.add
    local.set 7
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        i32.const 41
        i32.const 20
        i32.store
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 2 (;@2;)
          end
          i32.const 4093
          i32.const 2
          i32.mul
          i32.const 2
          i32.add
          i32.const 4099
          i32.store
          i32.const 4091
          i32.const 4097
          i32.store
          i32.const 4193
          i32.const 2
          i32.mul
          i32.const 4099
          i32.store
          i32.const 4194
          i32.const 2
          i32.mul
          i32.const 4099
          i32.store
          i32.const 100
          i32.load
          drop
        end
        i32.const 100
        local.get 7
        i64.store
        local.get 0
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        call 10
        local.set 5
        local.get 5
        i64.const 10
        i64.add
        local.set 6
        local.get 5
        i64.const 2
        i64.mul
        local.set 5
        i32.const 339968
        i32.load
        i32.const 255
        i32.add
        i32.const 4096
        i32.mul
        i32.load
        local.get 5
        i32.wrap_i64
        i32.add
        local.get 6
        i32.wrap_i64
        i32.mul
        i32.load
        drop
      end
      local.get 0
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      call 10
      drop
    end
    call 7
    call 7
  )
  (func (;7;) (type 1))
  (func (;8;) (type 4) (param i32 i32 i32 i64)
    (local i32 i64 i64 i64)
    i32.const 99
    local.set 4
    local.get 3
    i64.const 4294967295
    i64.add
    local.set 7
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        i32.const 41
        i32.const 20
        i32.store
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 2 (;@2;)
          end
          i32.const 4096
          i32.const 4096
          i32.store
          i32.const 4095
          i32.const 4097
          i32.store
          i32.const 4094
          i32.const 4098
          i32.store
          i32.const 4093
          i32.const 2
          i32.mul
          i32.const 4099
          i32.store
        end
        i32.const 100
        local.get 7
        i64.store
        call 10
        local.set 5
        local.get 5
        i64.const 10
        i64.add
        local.set 6
        local.get 5
        i64.const 2
        i64.mul
        local.set 5
        i32.const 339968
        i32.load
        i32.const 255
        i32.and
        i32.const 4096
        i32.mul
        i32.load
        local.get 5
        i32.wrap_i64
        i32.add
        local.get 6
        i32.wrap_i64
        i32.mul
        i32.load
        drop
      end
      local.get 0
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      call 10
      drop
    end
    call 7
    call 7
  )
  (func (;9;) (type 6) (param i64)
    (local i64 i64 i64 i32 i32 i32 i32 i64)
    i32.const 256
    local.set 7
    i32.const 256
    local.set 4
    loop ;; label = @1
      local.get 4
      i32.const 1
      i32.sub
      local.set 4
      local.get 4
      i32.const 167
      i32.mul
      i32.const 13
      i32.add
      i32.const 255
      i32.and
      local.set 5
      local.get 5
      i32.const 4096
      i32.mul
      local.set 6
      local.get 6
      call 10
      local.set 1
      i32.load
      drop
      call 10
      local.set 2
      local.get 2
      local.get 1
      i64.sub
      local.set 3
      block ;; label = @2
        local.get 3
        local.get 0
        i64.gt_u
        br_if 0 (;@2;)
        local.get 5
        call 16
        local.get 5
        local.set 7
      end
      local.get 6
      call 12
      local.get 4
      br_if 0 (;@1;)
    end
  )
  (func (;10;) (type 7) (result i64)
    i32.const 64
    call 3
    drop
    i32.const 64
    i64.load
  )
  (func (;11;) (type 1)
    call 2
    drop
  )
  (func (;12;) (type 3) (param i32)
    local.get 0
    call 0
    drop
  )
  (func (;13;) (type 1)
    (local i32)
    i32.const 256
    local.set 0
    loop ;; label = @1
      local.get 0
      i32.const 1
      i32.sub
      local.set 0
      local.get 0
      i32.const 4096
      i32.mul
      call 12
      local.get 0
      br_if 0 (;@1;)
    end
  )
  (func (;14;) (type 1)
    (local i32)
    i32.const 256
    local.set 0
    loop ;; label = @1
      local.get 0
      i32.const 1
      i32.sub
      local.set 0
      local.get 0
      i32.const 4096
      i32.mul
      call 12
      local.get 0
      br_if 0 (;@1;)
    end
  )
  (func (;15;) (type 7) (result i64)
    (local i32 i64 i64 i64 i64)
    i64.const 550
  )
  (func (;16;) (type 3) (param i32)
    i32.const 0
    i32.const 128
    i32.store
    i32.const 128
    local.get 0
    i32.store
    i32.const 132
    i32.const 10
    i32.store
    i32.const 136
    i32.const 0
    i32.store
    i32.const 4
    i32.const 2
    i32.store
    i32.const 1
    i32.const 0
    i32.const 1
    i32.const 8
    call 4
    drop
  )
  (func (;17;) (type 8) (param i64) (result i64)
    local.get 0
    i64.const 1000
    i64.div_u
    i64.const 48
    i64.add
    i32.wrap_i64
    call 16
    local.get 0
    i64.const 1000
    i64.rem_u
    i64.const 100
    i64.div_u
    i64.const 48
    i64.add
    i32.wrap_i64
    call 16
    local.get 0
    i64.const 100
    i64.rem_u
    i64.const 10
    i64.div_u
    i64.const 48
    i64.add
    i32.wrap_i64
    call 16
    local.get 0
    i64.const 10
    i64.rem_u
    i64.const 48
    i64.add
    i32.wrap_i64
    call 16
    local.get 0
  )
  (func (;18;) (type 1)
    (local i32 i64 i64 i64)
    i32.const 256
    local.set 0
    loop ;; label = @1
      local.get 0
      i32.const 1
      i32.sub
      local.set 0
      local.get 0
      i32.const 4096
      i32.mul
      i32.load
      drop
      call 11
      local.get 0
      i32.const 4096
      i32.mul
      call 12
      local.get 0
      br_if 0 (;@1;)
    end
    i32.const 10000
    local.set 0
    loop ;; label = @1
      call 10
      local.set 1
      call 10
      local.set 2
      local.get 2
      local.get 1
      i64.sub
      local.get 3
      i64.add
      local.set 3
      local.get 0
      i32.const 1
      i32.sub
      local.set 0
      local.get 0
      br_if 0 (;@1;)
    end
  )
  (func (;19;) (type 3) (param i32)
    block ;; label = @1
      local.get 0
      i32.const 0
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 5
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 6
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 7
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 9
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 10
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 11
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 12
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 13
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 14
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 15
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 16
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 17
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 18
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 19
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 20
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 21
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 22
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 23
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 24
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 25
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 26
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 27
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 28
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 29
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 30
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 31
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 32
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 33
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
    block ;; label = @1
      local.get 0
      i32.const 34
      i32.ne
      br_if 0 (;@1;)
      i32.const 41
      i32.const 20
      i32.store
    end
  )
  (func (;20;) (type 1)
    (local i32)
    i32.const 256
    local.set 0
    loop ;; label = @1
      local.get 0
      i32.const 1
      i32.sub
      local.set 0
      local.get 0
      i32.const 4096
      i32.mul
      local.get 0
      i32.store
      call 11
      local.get 0
      i32.const 4096
      i32.mul
      call 12
      local.get 0
      br_if 0 (;@1;)
    end
  )
  (table (;0;) 4 funcref)
  (memory (;0;) 2024 65535)
  (export "main" (func 5))
  (export "ftrain" (func 6))
  (export "noopfunc" (func 7))
  (export "fread" (func 8))
  (export "_start" (func 5))
  (elem (;0;) (i32.const 0) func 19 8 12 6)
)
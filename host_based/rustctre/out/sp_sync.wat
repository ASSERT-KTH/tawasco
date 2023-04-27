(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32) (result i64)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (result i64)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i64 i64)))
  (type (;11;) (func (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;19;) (func (param i64 i32 i32) (result i32)))
  (type (;20;) (func (param i32 i64 i64 i64 i64)))
  (import "env" "_mm_mfence" (func $_mm_mfence (type 0)))
  (import "env" "_mm_clflush" (func $_mm_clflush (type 1)))
  (import "env" "victim_code" (func $victim_code (type 1)))
  (import "env" "_rdtsc" (func $_rdtsc (type 8)))
  (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17hdcb202a40cb61d99E (type 9)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (type 2)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (type 2)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 1)))
  (func $__wasm_call_ctors (type 0)
    call $__wasilibc_initialize_environ_eagerly)
  (func $_start (type 0)
    (local i32)
    block  ;; label = @1
      call $__original_main
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $exit
      unreachable
    end)
  (func $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he5220352c8375a29E (type 1) (param i32)
    local.get 0
    call_indirect (type 0))
  (func $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17haebda16984b1c7e5E.llvm.3089338565553552829 (type 5) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load
    call $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he5220352c8375a29E
    local.get 1
    i32.const 0
    i32.store8 offset=15
    local.get 1
    i32.const 15
    i32.add
    call $_ZN3std3sys4wasi7process8ExitCode6as_i3217hd3a494473b858659E
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h945f1e06ef1ef8acE.llvm.3089338565553552829 (type 5) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load
    call $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he5220352c8375a29E
    local.get 1
    i32.const 0
    i32.store8 offset=15
    local.get 1
    i32.const 15
    i32.add
    call $_ZN3std3sys4wasi7process8ExitCode6as_i3217hd3a494473b858659E
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd87e38a942c4297dE.llvm.3089338565553552829 (type 1) (param i32))
  (func $_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h8ffe9d58339cabc4E (type 1) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.const 4
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        i32.load
        call $__rust_dealloc
      end
      local.get 0
      i32.load offset=4
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr52drop_in_place$LT$core..num..error..ParseIntError$GT$17h2a590962b29c9d0fE (type 1) (param i32))
  (func $read_memory_byte (type 10) (param i32 i32 i64 i64)
    (local i32 i32 i32 i32 i32 i32 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 2080
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 0
    i32.const 2048
    call $memset
    drop
    local.get 4
    i32.const 2056
    i32.add
    i32.const 1048634
    i32.const 5
    call $_ZN3std3env4_var17hf749d4dbbb8f71d4E
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 5
          i32.const 1
          call $__rust_alloc
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.const 4
          i32.add
          i32.const 0
          i32.load8_u offset=1048643
          i32.store8
          local.get 5
          i32.const 0
          i32.load offset=1048639 align=1
          i32.store align=1
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.load offset=2056
              i32.eqz
              br_if 0 (;@5;)
              i32.const 5
              local.set 6
              block  ;; label = @6
                local.get 4
                i32.load offset=2060
                local.tee 7
                br_if 0 (;@6;)
                i32.const 5
                local.set 8
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 4
                i32.const 2064
                i32.add
                i32.load
                local.tee 9
                br_if 0 (;@6;)
                i32.const 5
                local.set 8
                br 2 (;@4;)
              end
              local.get 7
              local.get 9
              i32.const 1
              call $__rust_dealloc
              i32.const 5
              local.set 8
              br 1 (;@4;)
            end
            local.get 4
            i32.const 2068
            i32.add
            i32.load
            local.set 6
            local.get 4
            i32.const 2064
            i32.add
            i32.load
            local.set 8
            local.get 4
            i32.load offset=2060
            local.set 7
            local.get 5
            i32.const 5
            i32.const 1
            call $__rust_dealloc
            local.get 7
            local.set 5
          end
          local.get 4
          i32.const 2056
          i32.add
          local.get 5
          local.get 6
          call $_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h9f2b5ca7d352791dE
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.load8_u offset=2056
              br_if 0 (;@5;)
              local.get 4
              i64.load offset=2064
              local.set 10
              call $_mm_mfence
              local.get 10
              i64.eqz
              i32.eqz
              br_if 1 (;@4;)
              i64.const 0
              local.set 3
              i64.const 0
              local.set 2
              i64.const 0
              local.set 11
              i64.const 0
              local.set 10
              br 4 (;@1;)
            end
            local.get 4
            local.get 4
            i32.load8_u offset=2057
            i32.store8 offset=2079
            i32.const 1048644
            i32.const 43
            local.get 4
            i32.const 2079
            i32.add
            i32.const 1048688
            i32.const 1048704
            call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
            unreachable
          end
          local.get 3
          i64.const 10
          i64.mul
          local.get 2
          i64.const 90
          i64.mul
          i64.add
          i64.const 100
          i64.div_u
          local.set 2
          i64.const 0
          local.set 11
          i32.const -1
          local.set 12
          i32.const -1
          local.set 13
          block  ;; label = @4
            loop  ;; label = @5
              i32.const 84
              local.set 6
              loop  ;; label = @6
                call $_mm_mfence
                local.get 6
                call $_mm_clflush
                local.get 6
                i32.const 256
                i32.add
                local.tee 6
                i32.const 65620
                i32.ne
                br_if 0 (;@6;)
              end
              call $_mm_mfence
              i32.const 100
              local.set 6
              loop  ;; label = @6
                local.get 1
                call $victim_code
                local.get 6
                i32.const -1
                i32.add
                local.tee 6
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 7
              i32.const 1048720
              local.set 6
              loop  ;; label = @6
                call $_rdtsc
                local.set 3
                local.get 6
                call $read_memory_offset
                drop
                block  ;; label = @7
                  call $_rdtsc
                  local.get 3
                  i64.sub
                  local.get 2
                  i64.gt_u
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 8
                  i32.add
                  local.get 7
                  i32.add
                  local.tee 9
                  local.get 9
                  i64.load
                  i64.const 1
                  i64.add
                  i64.store
                end
                local.get 6
                i32.const 256
                i32.add
                local.set 6
                local.get 7
                i32.const 8
                i32.add
                local.tee 7
                i32.const 2048
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 11
              i64.const 1
              i64.add
              local.set 11
              i32.const 0
              local.set 7
              local.get 4
              i32.const 8
              i32.add
              local.set 9
              local.get 12
              local.set 6
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 9
                          i64.load
                          local.tee 3
                          local.get 4
                          i32.const 8
                          i32.add
                          local.get 6
                          i32.const 3
                          i32.shl
                          i32.add
                          i64.load
                          i64.ge_u
                          br_if 3 (;@8;)
                          local.get 13
                          i32.const 0
                          i32.lt_s
                          br_if 2 (;@9;)
                          local.get 13
                          i32.const 256
                          i32.lt_u
                          br_if 1 (;@10;)
                          local.get 13
                          i32.const 256
                          i32.const 1114272
                          call $_ZN4core9panicking18panic_bounds_check17h3cb110ec612eb24cE
                          unreachable
                        end
                        local.get 6
                        i32.const 256
                        i32.const 1114256
                        call $_ZN4core9panicking18panic_bounds_check17h3cb110ec612eb24cE
                        unreachable
                      end
                      local.get 3
                      local.get 4
                      i32.const 8
                      i32.add
                      local.get 13
                      i32.const 3
                      i32.shl
                      i32.add
                      i64.load
                      i64.lt_u
                      br_if 2 (;@7;)
                    end
                    local.get 7
                    local.set 13
                    br 1 (;@7;)
                  end
                  local.get 6
                  local.set 13
                  local.get 7
                  local.set 6
                end
                local.get 9
                i32.const 8
                i32.add
                local.set 9
                local.get 7
                i32.const 1
                i32.add
                local.tee 7
                i32.const 256
                i32.ne
                br_if 0 (;@6;)
              end
              block  ;; label = @6
                local.get 6
                local.get 13
                local.get 6
                i32.const 255
                i32.and
                local.tee 7
                select
                local.tee 12
                i32.const 256
                i32.ge_u
                br_if 0 (;@6;)
                local.get 13
                local.get 6
                local.get 7
                select
                local.tee 13
                i32.const 256
                i32.ge_u
                br_if 2 (;@4;)
                local.get 11
                local.get 10
                i64.eq
                br_if 4 (;@2;)
                br 1 (;@5;)
              end
            end
            local.get 12
            i32.const 256
            i32.const 1114288
            call $_ZN4core9panicking18panic_bounds_check17h3cb110ec612eb24cE
            unreachable
          end
          local.get 13
          i32.const 256
          i32.const 1114304
          call $_ZN4core9panicking18panic_bounds_check17h3cb110ec612eb24cE
          unreachable
        end
        i32.const 5
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
        unreachable
      end
      local.get 4
      i32.const 8
      i32.add
      local.get 12
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.set 11
      local.get 4
      i32.const 8
      i32.add
      local.get 13
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.set 10
      local.get 13
      i64.extend_i32_u
      local.set 2
      local.get 12
      i64.extend_i32_u
      local.set 3
    end
    local.get 0
    local.get 3
    i64.store offset=16
    local.get 0
    local.get 10
    i64.store offset=8
    local.get 0
    local.get 11
    i64.store
    local.get 0
    i32.const 24
    i32.add
    local.get 2
    i64.store
    block  ;; label = @1
      local.get 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      local.get 8
      i32.const 1
      call $__rust_dealloc
    end
    local.get 4
    i32.const 2080
    i32.add
    global.set $__stack_pointer)
  (func $predict (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    i32.const 1048720
    call $get_cache_time
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    local.get 1
    i64.load offset=8
    local.get 1
    i64.load offset=16
    call $read_memory_byte
    local.get 1
    local.get 1
    i32.load8_u offset=40
    i32.store offset=60
    local.get 1
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get 1
    i64.const 1
    i64.store offset=28 align=4
    local.get 1
    i32.const 1114320
    i32.store offset=24
    local.get 1
    i32.const 4
    i32.store offset=68
    local.get 1
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=40
    local.get 1
    local.get 1
    i32.const 60
    i32.add
    i32.store offset=64
    local.get 1
    i32.const 24
    i32.add
    call $_ZN3std2io5stdio6_print17h1d5ae54016d25589E
    local.get 1
    call $_ZN3std2io5stdio6stdout17h2bf55076f65c128fE
    i32.store offset=76
    local.get 1
    i32.const 64
    i32.add
    local.get 1
    i32.const 76
    i32.add
    call $_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5flush17hff802fbd6c87957aE
    block  ;; label = @1
      local.get 1
      i32.load8_u offset=64
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 80
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    local.get 1
    i64.load offset=64
    i64.store offset=24
    i32.const 1048644
    i32.const 43
    local.get 1
    i32.const 24
    i32.add
    i32.const 1114328
    i32.const 1114344
    call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
    unreachable)
  (func $_ZN7sp_sync4main17hc1ae30fa4ea6b719E (type 0)
    i32.const 0
    call $predict)
  (func $__original_main (type 11) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 5
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 1048576
    i32.const 0
    i32.const 0
    i32.const 0
    call $_ZN3std2rt19lang_start_internal17hd1ed3ac7f4390765E
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $main (type 2) (param i32 i32) (result i32)
    call $__original_main)
  (func $__rust_alloc (type 2) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $__rust_alloc_error_handler (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call $__rg_oom
    return)
  (func $read_memory_offset (type 5) (param i32) (result i32)
    local.get 0
    i32.load8_u
    drop
    i32.const 0)
  (func $get_cache_time (type 4) (param i32 i32)
    (local i32 i64 i64 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    i32.const 0
    local.set 2
    i64.const 0
    local.set 3
    i64.const 0
    local.set 4
    loop  ;; label = @1
      call $_mm_mfence
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 5
        call $_mm_clflush
        local.get 1
        local.get 5
        i32.add
        local.set 6
        call $_mm_mfence
        call $_rdtsc
        local.set 7
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 8
        call $_rdtsc
        local.set 9
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 10
        call $_rdtsc
        local.set 11
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 12
        call $_rdtsc
        local.set 13
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 14
        call $_rdtsc
        local.set 15
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 16
        call $_rdtsc
        local.set 17
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 18
        call $_rdtsc
        local.set 19
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 20
        call $_rdtsc
        local.set 21
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 22
        call $_rdtsc
        local.set 23
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 24
        call $_rdtsc
        local.set 25
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 26
        call $_rdtsc
        local.set 27
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 28
        call $_rdtsc
        local.set 29
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 30
        call $_rdtsc
        local.set 31
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 32
        call $_rdtsc
        local.set 33
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 34
        call $_rdtsc
        local.set 35
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 36
        call $_rdtsc
        local.set 37
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 38
        call $_rdtsc
        local.set 39
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 40
        call $_rdtsc
        local.set 41
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 42
        call $_rdtsc
        local.set 43
        local.get 6
        i32.load8_u
        drop
        call $_rdtsc
        local.set 44
        call $_rdtsc
        local.set 45
        local.get 6
        i32.load8_u
        drop
        local.get 44
        local.get 42
        local.get 40
        local.get 38
        local.get 36
        local.get 34
        local.get 32
        local.get 30
        local.get 28
        local.get 26
        local.get 24
        local.get 22
        local.get 20
        local.get 18
        local.get 16
        local.get 14
        local.get 12
        local.get 3
        local.get 10
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        local.get 43
        local.get 41
        local.get 39
        local.get 37
        local.get 35
        local.get 33
        local.get 31
        local.get 29
        local.get 27
        local.get 25
        local.get 23
        local.get 21
        local.get 19
        local.get 17
        local.get 15
        local.get 13
        local.get 9
        local.get 11
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.add
        i64.sub
        i64.add
        call $_rdtsc
        local.get 45
        i64.sub
        i64.add
        local.set 3
        local.get 8
        local.get 7
        i64.sub
        local.get 4
        i64.add
        local.set 4
        local.get 5
        i32.const 256
        i32.add
        local.tee 5
        i32.const 65536
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.const 2000
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 4
    i64.const 512000
    i64.div_u
    i64.store offset=8
    local.get 0
    local.get 3
    i64.const 9728000
    i64.div_u
    i64.store)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h89a7ec15b3c3af74E (type 3) (param i32) (result i64)
    i64.const 8378048562631854315)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hcc4608a44e56b59eE (type 3) (param i32) (result i64)
    i64.const 938171240602766752)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17he98c211961ee7be9E (type 3) (param i32) (result i64)
    i64.const 1667325804462301130)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4ac40482c0e5ad3fE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    call $_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d9e4b0fa6470c84E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7469f13451924793E (type 2) (param i32 i32) (result i32)
    local.get 1
    i32.const 1114360
    i32.const 2
    call $_ZN4core3fmt9Formatter3pad17hd0227a3cebb524c8E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8a7c67d8f56b1c6aE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17had97f4230f28546bE)
  (func $_ZN3std2io5error82_$LT$impl$u20$core..fmt..Debug$u20$for$u20$std..io..error..repr_unpacked..Repr$GT$3fmt17hf6e046a44867bc5aE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;) 0 (;@5;)
            end
            local.get 2
            local.get 0
            i32.load offset=4
            i32.store offset=12
            local.get 2
            i32.const 16
            i32.add
            local.get 1
            i32.const 1116164
            i32.const 2
            call $_ZN4core3fmt9Formatter12debug_struct17h9858016b6343d693E
            local.get 2
            i32.const 16
            i32.add
            i32.const 1116166
            i32.const 4
            local.get 2
            i32.const 12
            i32.add
            i32.const 1116172
            call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
            local.set 0
            local.get 2
            local.get 2
            i32.load offset=12
            call $_ZN3std3sys4wasi17decode_error_kind17h2104b06d09f796bdE
            i32.const 255
            i32.and
            i32.store8 offset=31
            local.get 0
            i32.const 1116114
            i32.const 4
            local.get 2
            i32.const 31
            i32.add
            i32.const 1116120
            call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
            local.set 0
            local.get 2
            i32.const 32
            i32.add
            local.get 2
            i32.load offset=12
            call $_ZN3std3sys4wasi2os12error_string17h1f2b88a95d293082E
            local.get 0
            i32.const 1116136
            i32.const 7
            local.get 2
            i32.const 32
            i32.add
            i32.const 1116188
            call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
            call $_ZN4core3fmt8builders11DebugStruct6finish17hd859ce96505d068dE
            local.set 0
            local.get 2
            i32.load offset=36
            local.tee 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.load offset=32
            local.get 1
            i32.const 1
            call $__rust_dealloc
            br 3 (;@1;)
          end
          local.get 2
          local.get 0
          i32.load8_u offset=1
          i32.store8 offset=16
          local.get 2
          i32.const 32
          i32.add
          local.get 1
          i32.const 1116160
          i32.const 4
          call $_ZN4core3fmt9Formatter11debug_tuple17hb2a35586ba246dbeE
          local.get 2
          i32.const 32
          i32.add
          local.get 2
          i32.const 16
          i32.add
          i32.const 1116120
          call $_ZN4core3fmt8builders10DebugTuple5field17hd9cd67be56e19918E
          call $_ZN4core3fmt8builders10DebugTuple6finish17h55220009ff51deecE
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=4
        local.set 0
        local.get 2
        i32.const 32
        i32.add
        local.get 1
        i32.const 1116109
        i32.const 5
        call $_ZN4core3fmt9Formatter12debug_struct17h9858016b6343d693E
        local.get 2
        i32.const 32
        i32.add
        i32.const 1116114
        i32.const 4
        local.get 0
        i32.const 8
        i32.add
        i32.const 1116120
        call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
        i32.const 1116136
        i32.const 7
        local.get 0
        i32.const 1116144
        call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
        call $_ZN4core3fmt8builders11DebugStruct6finish17hd859ce96505d068dE
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.const 8
      i32.add
      i32.store offset=16
      local.get 2
      local.get 0
      i32.store offset=32
      local.get 1
      i32.const 1117992
      i32.const 6
      i32.const 1116114
      i32.const 4
      local.get 2
      i32.const 16
      i32.add
      i32.const 1117976
      i32.const 1117998
      i32.const 5
      local.get 2
      i32.const 32
      i32.add
      i32.const 1118004
      call $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h0b074b684d5f9949E
      local.set 0
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd3c9bdefb10e4552E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 1
    local.get 0
    i32.const 4
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 2))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he447fa906e540e7fE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17ha5b91a35c0c4d048E
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17he2a0bccdc0531bc7E
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hfea2dbbbadc4d858E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h831c4cf959d207b3E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h5845731b1bb89d06E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc8756858645eef2E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h41c631a3c92ed89cE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe29d768ce08f33cE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN62_$LT$std..io..error..ErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h3179d984aedf22fcE)
  (func $_ZN62_$LT$std..io..error..ErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h3179d984aedf22fcE (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      local.get 0
                                                                                      i32.load8_u
                                                                                      br_table 0 (;@41;) 1 (;@40;) 2 (;@39;) 3 (;@38;) 4 (;@37;) 5 (;@36;) 6 (;@35;) 7 (;@34;) 8 (;@33;) 9 (;@32;) 10 (;@31;) 11 (;@30;) 12 (;@29;) 13 (;@28;) 14 (;@27;) 15 (;@26;) 16 (;@25;) 17 (;@24;) 18 (;@23;) 19 (;@22;) 20 (;@21;) 21 (;@20;) 22 (;@19;) 23 (;@18;) 24 (;@17;) 25 (;@16;) 26 (;@15;) 27 (;@14;) 28 (;@13;) 29 (;@12;) 30 (;@11;) 31 (;@10;) 32 (;@9;) 33 (;@8;) 34 (;@7;) 35 (;@6;) 36 (;@5;) 37 (;@4;) 38 (;@3;) 39 (;@2;) 40 (;@1;) 0 (;@41;)
                                                                                    end
                                                                                    local.get 1
                                                                                    i32.const 1118543
                                                                                    i32.const 8
                                                                                    call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                                    return
                                                                                  end
                                                                                  local.get 1
                                                                                  i32.const 1118527
                                                                                  i32.const 16
                                                                                  call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                                  return
                                                                                end
                                                                                local.get 1
                                                                                i32.const 1118510
                                                                                i32.const 17
                                                                                call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                                return
                                                                              end
                                                                              local.get 1
                                                                              i32.const 1118495
                                                                              i32.const 15
                                                                              call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                              return
                                                                            end
                                                                            local.get 1
                                                                            i32.const 1118480
                                                                            i32.const 15
                                                                            call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                            return
                                                                          end
                                                                          local.get 1
                                                                          i32.const 1118462
                                                                          i32.const 18
                                                                          call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                          return
                                                                        end
                                                                        local.get 1
                                                                        i32.const 1118445
                                                                        i32.const 17
                                                                        call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                        return
                                                                      end
                                                                      local.get 1
                                                                      i32.const 1118433
                                                                      i32.const 12
                                                                      call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                      return
                                                                    end
                                                                    local.get 1
                                                                    i32.const 1118424
                                                                    i32.const 9
                                                                    call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                    return
                                                                  end
                                                                  local.get 1
                                                                  i32.const 1118408
                                                                  i32.const 16
                                                                  call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                  return
                                                                end
                                                                local.get 1
                                                                i32.const 1118397
                                                                i32.const 11
                                                                call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                                return
                                                              end
                                                              local.get 1
                                                              i32.const 1118387
                                                              i32.const 10
                                                              call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                              return
                                                            end
                                                            local.get 1
                                                            i32.const 1118374
                                                            i32.const 13
                                                            call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                            return
                                                          end
                                                          local.get 1
                                                          i32.const 1118364
                                                          i32.const 10
                                                          call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                          return
                                                        end
                                                        local.get 1
                                                        i32.const 1118351
                                                        i32.const 13
                                                        call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                        return
                                                      end
                                                      local.get 1
                                                      i32.const 1118339
                                                      i32.const 12
                                                      call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                      return
                                                    end
                                                    local.get 1
                                                    i32.const 1118322
                                                    i32.const 17
                                                    call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                    return
                                                  end
                                                  local.get 1
                                                  i32.const 1118304
                                                  i32.const 18
                                                  call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                  return
                                                end
                                                local.get 1
                                                i32.const 1118290
                                                i32.const 14
                                                call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                                return
                                              end
                                              local.get 1
                                              i32.const 1118268
                                              i32.const 22
                                              call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                              return
                                            end
                                            local.get 1
                                            i32.const 1118256
                                            i32.const 12
                                            call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                            return
                                          end
                                          local.get 1
                                          i32.const 1118245
                                          i32.const 11
                                          call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                          return
                                        end
                                        local.get 1
                                        i32.const 1118237
                                        i32.const 8
                                        call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                        return
                                      end
                                      local.get 1
                                      i32.const 1118228
                                      i32.const 9
                                      call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                      return
                                    end
                                    local.get 1
                                    i32.const 1118217
                                    i32.const 11
                                    call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                    return
                                  end
                                  local.get 1
                                  i32.const 1118206
                                  i32.const 11
                                  call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                  return
                                end
                                local.get 1
                                i32.const 1118183
                                i32.const 23
                                call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                                return
                              end
                              local.get 1
                              i32.const 1118171
                              i32.const 12
                              call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                              return
                            end
                            local.get 1
                            i32.const 1118159
                            i32.const 12
                            call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                            return
                          end
                          local.get 1
                          i32.const 1118141
                          i32.const 18
                          call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                          return
                        end
                        local.get 1
                        i32.const 1118133
                        i32.const 8
                        call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                        return
                      end
                      local.get 1
                      i32.const 1118119
                      i32.const 14
                      call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                      return
                    end
                    local.get 1
                    i32.const 1118107
                    i32.const 12
                    call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                    return
                  end
                  local.get 1
                  i32.const 1118092
                  i32.const 15
                  call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                  return
                end
                local.get 1
                i32.const 1118073
                i32.const 19
                call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
                return
              end
              local.get 1
              i32.const 1118062
              i32.const 11
              call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
              return
            end
            local.get 1
            i32.const 1117964
            i32.const 11
            call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
            return
          end
          local.get 1
          i32.const 1118049
          i32.const 13
          call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
          return
        end
        local.get 1
        i32.const 1118038
        i32.const 11
        call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
        return
      end
      local.get 1
      i32.const 1118033
      i32.const 5
      call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E
      return
    end
    local.get 1
    i32.const 1118020
    i32.const 13
    call $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hda31a771c879ff37E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h23a604b7ebd5d791E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf793f4a8f90a5cc1E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h5331b1bdfe7a0ea7E)
  (func $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h6fae94c91385ed96E (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_lower_hex17ha5b91a35c0c4d048E
        br_if 0 (;@2;)
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17he2a0bccdc0531bc7E
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hc9985ddad73a8ab6E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h5845731b1bb89d06E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h831c4cf959d207b3E)
  (func $_ZN3std2io5Write9write_all17h975295fc7cdc6a1dE (type 6) (param i32 i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1116528
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.const 2
        i64.or
        local.set 4
        loop  ;; label = @3
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 1
          i32.store offset=8
          local.get 3
          i32.const 16
          i32.add
          i32.const 1
          local.get 3
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN4wasi13lib_generated8fd_write17h7be21fbc857d7403E
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load16_u offset=16
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=20
                  local.tee 5
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 2
                  local.get 5
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 2
                  local.get 5
                  i32.sub
                  local.set 2
                  local.get 1
                  local.get 5
                  i32.add
                  local.set 1
                  br 3 (;@4;)
                end
                local.get 3
                local.get 3
                i32.load16_u offset=18
                i32.store16 offset=30
                local.get 3
                i32.const 30
                i32.add
                call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
                local.tee 5
                i32.const 65535
                i32.and
                call $_ZN3std3sys4wasi17decode_error_kind17h2104b06d09f796bdE
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                i64.extend_i32_u
                i64.const 65535
                i64.and
                i64.const 32
                i64.shl
                local.set 4
              end
              local.get 0
              local.get 4
              i64.store align=4
              br 4 (;@1;)
            end
            local.get 5
            local.get 2
            i32.const 1116484
            call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
            unreachable
          end
          local.get 2
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const 4
      i32.store8
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3fmt5Write10write_char17h457e47b014ef05bbE (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=12
            i32.const 4
            local.set 3
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 3
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 3
    end
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 4
      i32.add
      i32.load
      local.get 1
      i32.load offset=8
      local.tee 0
      i32.sub
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
      local.get 1
      i32.load offset=8
      local.set 0
    end
    local.get 1
    i32.load
    local.get 0
    i32.add
    local.get 2
    i32.const 12
    i32.add
    local.get 3
    call $memcpy
    drop
    local.get 1
    local.get 0
    local.get 3
    i32.add
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.add
        local.tee 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        i32.const 1
        i32.shl
        local.tee 4
        local.get 2
        local.get 4
        local.get 2
        i32.gt_u
        select
        local.tee 2
        i32.const 8
        local.get 2
        i32.const 8
        i32.gt_u
        select
        local.tee 2
        i32.const -1
        i32.xor
        i32.const 31
        i32.shr_u
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.store offset=24
            local.get 3
            local.get 1
            i32.store offset=20
            local.get 3
            local.get 0
            i32.load
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.store offset=24
        end
        local.get 3
        local.get 2
        local.get 4
        local.get 3
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h020b67df34d2433eE
        local.get 3
        i32.load offset=4
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.load
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 2
          i32.store
          br 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.const -2147483647
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3fmt5Write10write_char17h752200e4b714b6b6E (type 2) (param i32 i32) (result i32)
    (local i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=7
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=6
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=5
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=4
            i32.const 4
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=6
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8 offset=4
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=5
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=5
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=4
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=4
      i32.const 1
      local.set 1
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.get 2
    i32.const 4
    i32.add
    local.get 1
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17hf5777b820d3088c8E
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=8
      local.tee 1
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      i64.load offset=8
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 4
        i32.load
        local.get 4
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 4
          i32.load offset=4
          local.tee 5
          i32.const 4
          i32.add
          i32.load
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load
          local.get 6
          local.get 5
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 3
      i64.store offset=4 align=4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.ne)
  (func $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17hf5777b820d3088c8E (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load
            local.tee 1
            i32.load offset=8
            br_if 0 (;@4;)
            local.get 1
            i32.const -1
            i32.store offset=8
            local.get 4
            i32.const 10
            local.get 2
            local.get 3
            call $_ZN4core5slice6memchr7memrchr17h31266fc9ecd72142E
            local.get 1
            i32.const 12
            i32.add
            local.set 5
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 20
                      i32.add
                      i32.load
                      local.tee 6
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 6
                      br 1 (;@8;)
                    end
                    local.get 6
                    local.get 5
                    i32.load
                    i32.add
                    i32.const -1
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 4
                    i32.const 8
                    i32.add
                    local.get 5
                    call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h0edd742f511a041eE
                    local.get 4
                    i32.load8_u offset=8
                    local.tee 6
                    i32.const 4
                    i32.ne
                    br_if 3 (;@5;)
                    local.get 1
                    i32.const 20
                    i32.add
                    i32.load
                    local.set 6
                  end
                  local.get 1
                  i32.const 16
                  i32.add
                  i32.load
                  local.get 6
                  i32.sub
                  local.get 3
                  i32.gt_u
                  br_if 1 (;@6;)
                  local.get 0
                  local.get 5
                  local.get 2
                  local.get 3
                  call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hc457a2b43044abc4E
                  br 6 (;@1;)
                end
                local.get 4
                i32.load offset=4
                i32.const 1
                i32.add
                local.tee 6
                local.get 3
                i32.gt_u
                br_if 3 (;@3;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 20
                        i32.add
                        i32.load
                        local.tee 7
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const 8
                        i32.add
                        local.get 2
                        local.get 6
                        call $_ZN3std2io5Write9write_all17h975295fc7cdc6a1dE
                        local.get 4
                        i32.load8_u offset=8
                        local.tee 7
                        i32.const 4
                        i32.eq
                        br_if 1 (;@9;)
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 7
                            br_table 0 (;@12;) 1 (;@11;) 0 (;@12;) 0 (;@12;) 0 (;@12;)
                          end
                          local.get 4
                          i32.load offset=12
                          local.set 8
                        end
                        i32.const 1119008
                        call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
                        local.set 9
                        local.get 7
                        br_if 1 (;@9;)
                        local.get 8
                        local.get 9
                        i32.const 65535
                        i32.and
                        i32.ne
                        br_if 1 (;@9;)
                        i32.const 0
                        local.set 7
                        br 2 (;@8;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 16
                          i32.add
                          i32.load
                          local.get 7
                          i32.sub
                          local.get 6
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 1
                          i32.load offset=12
                          local.get 7
                          i32.add
                          local.get 2
                          local.get 6
                          call $memcpy
                          drop
                          local.get 1
                          i32.const 20
                          i32.add
                          local.get 7
                          local.get 6
                          i32.add
                          i32.store
                          br 1 (;@10;)
                        end
                        local.get 4
                        i32.const 8
                        i32.add
                        local.get 5
                        local.get 2
                        local.get 6
                        call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hc457a2b43044abc4E
                        local.get 4
                        i32.load8_u offset=8
                        local.tee 7
                        i32.const 4
                        i32.ne
                        br_if 8 (;@2;)
                      end
                      local.get 4
                      i32.const 8
                      i32.add
                      local.get 5
                      call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h0edd742f511a041eE
                      block  ;; label = @10
                        local.get 4
                        i32.load8_u offset=8
                        local.tee 7
                        i32.const 4
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 1
                        i32.const 20
                        i32.add
                        i32.load
                        local.set 7
                        br 2 (;@8;)
                      end
                      local.get 0
                      local.get 4
                      i32.load offset=9 align=1
                      i32.store offset=1 align=1
                      local.get 0
                      i32.const 4
                      i32.add
                      local.get 4
                      i32.load offset=12 align=1
                      i32.store align=1
                      local.get 0
                      local.get 7
                      i32.store8
                      br 8 (;@1;)
                    end
                    i32.const 0
                    local.set 7
                    local.get 4
                    i64.load offset=8
                    local.tee 10
                    i32.wrap_i64
                    local.tee 8
                    i32.const 255
                    i32.and
                    i32.const 4
                    i32.ne
                    br_if 1 (;@7;)
                  end
                  local.get 2
                  local.get 6
                  i32.add
                  local.set 2
                  block  ;; label = @8
                    local.get 1
                    i32.const 16
                    i32.add
                    i32.load
                    local.get 7
                    i32.sub
                    local.get 3
                    local.get 6
                    i32.sub
                    local.tee 3
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 5
                    local.get 2
                    local.get 3
                    call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hc457a2b43044abc4E
                    br 7 (;@1;)
                  end
                  local.get 1
                  i32.load offset=12
                  local.get 7
                  i32.add
                  local.get 2
                  local.get 3
                  call $memcpy
                  drop
                  local.get 0
                  i32.const 4
                  i32.store8
                  local.get 1
                  i32.const 20
                  i32.add
                  local.get 7
                  local.get 3
                  i32.add
                  i32.store
                  br 6 (;@1;)
                end
                local.get 0
                local.get 8
                i32.store8
                local.get 0
                i32.const 7
                i32.add
                local.get 10
                i64.const 56
                i64.shr_u
                i64.store8
                local.get 0
                i32.const 5
                i32.add
                local.get 10
                i64.const 40
                i64.shr_u
                i64.store16 align=1
                local.get 0
                local.get 10
                i64.const 8
                i64.shr_u
                i64.store32 offset=1 align=1
                br 5 (;@1;)
              end
              local.get 1
              i32.load offset=12
              local.get 6
              i32.add
              local.get 2
              local.get 3
              call $memcpy
              drop
              local.get 0
              i32.const 4
              i32.store8
              local.get 1
              i32.const 20
              i32.add
              local.get 6
              local.get 3
              i32.add
              i32.store
              br 4 (;@1;)
            end
            local.get 0
            local.get 4
            i32.load offset=9 align=1
            i32.store offset=1 align=1
            local.get 0
            i32.const 4
            i32.add
            local.get 4
            i32.load offset=12 align=1
            i32.store align=1
            local.get 0
            local.get 6
            i32.store8
            br 3 (;@1;)
          end
          i32.const 1114460
          i32.const 16
          local.get 4
          i32.const 8
          i32.add
          i32.const 1114476
          i32.const 1116300
          call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
          unreachable
        end
        i32.const 1114493
        i32.const 35
        i32.const 1115344
        call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
        unreachable
      end
      local.get 0
      local.get 4
      i32.load offset=9 align=1
      i32.store offset=1 align=1
      local.get 0
      i32.const 4
      i32.add
      local.get 4
      i32.load offset=12 align=1
      i32.store align=1
      local.get 0
      local.get 7
      i32.store8
    end
    local.get 1
    local.get 1
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3fmt5Write10write_char17hb60801a590d935f5E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=12
            i32.const 4
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17had05ad74dd2a4217E
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17had05ad74dd2a4217E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1116528
      i64.extend_i32_u
      i64.const 32
      i64.shl
      i64.const 2
      i64.or
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.get 2
        i32.store offset=12
        local.get 3
        local.get 1
        i32.store offset=8
        local.get 3
        i32.const 16
        i32.add
        i32.const 2
        local.get 3
        i32.const 8
        i32.add
        i32.const 1
        call $_ZN4wasi13lib_generated8fd_write17h7be21fbc857d7403E
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load16_u offset=16
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=20
                local.tee 6
                i32.eqz
                br_if 1 (;@5;)
                local.get 2
                local.get 6
                i32.lt_u
                br_if 2 (;@4;)
                local.get 2
                local.get 6
                i32.sub
                local.set 2
                local.get 1
                local.get 6
                i32.add
                local.set 1
                br 3 (;@3;)
              end
              local.get 3
              local.get 3
              i32.load16_u offset=18
              i32.store16 offset=30
              local.get 3
              i32.const 30
              i32.add
              call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
              local.tee 6
              i32.const 65535
              i32.and
              call $_ZN3std3sys4wasi17decode_error_kind17h2104b06d09f796bdE
              i32.const 255
              i32.and
              i32.const 35
              i32.eq
              br_if 2 (;@3;)
              local.get 6
              i64.extend_i32_u
              i64.const 65535
              i64.and
              i64.const 32
              i64.shl
              local.set 5
            end
            local.get 5
            i64.const 255
            i64.and
            i64.const 4
            i64.eq
            br_if 3 (;@1;)
            block  ;; label = @5
              local.get 0
              i32.load8_u offset=4
              i32.const 3
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 2
              i32.load
              local.get 2
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 1
                i32.const 4
                i32.add
                i32.load
                local.tee 6
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.load
                local.get 6
                local.get 1
                i32.const 8
                i32.add
                i32.load
                call $__rust_dealloc
              end
              local.get 2
              i32.const 12
              i32.const 4
              call $__rust_dealloc
            end
            local.get 0
            local.get 5
            i64.store offset=4 align=4
            i32.const 1
            local.set 4
            br 3 (;@1;)
          end
          local.get 6
          local.get 2
          i32.const 1116484
          call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
          unreachable
        end
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN4core3fmt5Write9write_fmt17ha776b70cfa82947cE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1114388
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17hc7be3432864b7f4fE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1114412
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17hf6ee32f70ceb21f7E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1114436
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std9panicking12default_hook17h735c059e19fa21edE (type 1) (param i32)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 1
    local.set 2
    block  ;; label = @1
      i32.const 0
      i32.load offset=1126180
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      call $_ZN3std5panic19get_backtrace_style17h290f12c8812679e4E
      i32.const 255
      i32.and
      local.set 2
    end
    local.get 1
    local.get 2
    i32.store8 offset=19
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            call $_ZN4core5panic10panic_info9PanicInfo8location17h0f08f4a013e2f428E
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.store offset=20
            local.get 1
            i32.const 8
            i32.add
            local.get 0
            call $_ZN4core5panic10panic_info9PanicInfo7payload17hf0ec7e38bd316611E
            i32.const 12
            local.set 3
            local.get 1
            i32.load offset=8
            local.tee 2
            local.get 1
            i32.load offset=12
            i32.const 12
            i32.add
            i32.load
            call_indirect (type 3)
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 4
                    i64.const 8378048562631854315
                    i64.eq
                    br_if 1 (;@7;)
                  end
                  local.get 1
                  local.get 0
                  call $_ZN4core5panic10panic_info9PanicInfo7payload17hf0ec7e38bd316611E
                  i32.const 1117356
                  local.set 0
                  local.get 1
                  i32.load
                  local.tee 2
                  local.get 1
                  i32.load offset=4
                  i32.const 12
                  i32.add
                  i32.load
                  call_indirect (type 3)
                  local.set 4
                  local.get 2
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 4
                  i64.const 938171240602766752
                  i64.ne
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 8
                  i32.add
                  local.set 0
                  br 1 (;@6;)
                end
                local.get 2
                i32.const 4
                i32.add
                local.set 0
              end
              local.get 0
              i32.load
              local.set 3
              local.get 2
              i32.load
              local.set 0
            end
            local.get 1
            local.get 3
            i32.store offset=28
            local.get 1
            local.get 0
            i32.store offset=24
            i32.const 9
            local.set 0
            i32.const 1117368
            local.set 3
            block  ;; label = @5
              call $_ZN3std10sys_common11thread_info14current_thread17h238c31c145c0acbfE
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const 16
              i32.add
              i32.load
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const 20
              i32.add
              i32.load
              i32.const -1
              i32.add
              local.set 0
              local.get 5
              local.set 3
            end
            local.get 1
            local.get 0
            i32.store offset=36
            local.get 1
            local.get 3
            i32.store offset=32
            local.get 1
            local.get 1
            i32.const 19
            i32.add
            i32.store offset=52
            local.get 1
            local.get 1
            i32.const 20
            i32.add
            i32.store offset=48
            local.get 1
            local.get 1
            i32.const 24
            i32.add
            i32.store offset=44
            local.get 1
            local.get 1
            i32.const 32
            i32.add
            i32.store offset=40
            i32.const 0
            i32.load8_u offset=1126080
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            i32.const 1
            i32.store8 offset=1126080
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1126160
              br_if 0 (;@5;)
              i32.const 0
              i32.const 1
              i32.store8 offset=1126160
              i32.const 0
              i32.const 0
              i32.store offset=1126164
              br 3 (;@2;)
            end
            i32.const 0
            i32.load offset=1126164
            local.set 0
            i32.const 0
            i32.const 0
            i32.store offset=1126164
            local.get 0
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load8_u offset=8
            local.set 3
            local.get 0
            i32.const 1
            i32.store8 offset=8
            local.get 1
            local.get 3
            i32.const 1
            i32.and
            local.tee 3
            i32.store8 offset=63
            local.get 3
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1126148
                  i32.const 2147483647
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
                  local.set 3
                  local.get 1
                  i32.const 40
                  i32.add
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.const 1117420
                  call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h51be37ad16cff75dE
                  local.get 3
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 1
                i32.const 40
                i32.add
                local.get 0
                i32.const 12
                i32.add
                i32.const 1117420
                call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h51be37ad16cff75dE
              end
              i32.const 0
              i32.load offset=1126148
              i32.const 2147483647
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
              br_if 0 (;@5;)
              local.get 0
              i32.const 1
              i32.store8 offset=9
            end
            i32.const 0
            i32.const 1
            i32.store8 offset=1126080
            local.get 0
            i32.const 0
            i32.store8 offset=8
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1126160
              br_if 0 (;@5;)
              i32.const 0
              local.get 0
              i32.store offset=1126164
              i32.const 0
              i32.const 1
              i32.store8 offset=1126160
              br 4 (;@1;)
            end
            i32.const 0
            i32.load offset=1126164
            local.set 3
            i32.const 0
            local.get 0
            i32.store offset=1126164
            local.get 3
            i32.eqz
            br_if 3 (;@1;)
            local.get 3
            local.get 3
            i32.load
            local.tee 0
            i32.const -1
            i32.add
            i32.store
            local.get 0
            i32.const 1
            i32.ne
            br_if 3 (;@1;)
            local.get 3
            call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h02b3aea1cbfdedf0E
            br 3 (;@1;)
          end
          i32.const 1114560
          i32.const 43
          i32.const 1117460
          call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
          unreachable
        end
        local.get 1
        i32.const 0
        i32.store offset=84
        local.get 1
        i32.const 1114460
        i32.store offset=80
        local.get 1
        i64.const 1
        i64.store offset=68 align=4
        local.get 1
        i32.const 1118784
        i32.store offset=64
        local.get 1
        i32.const 63
        i32.add
        local.get 1
        i32.const 64
        i32.add
        call $_ZN4core9panicking13assert_failed17h08c93d381fb8d0bcE
        unreachable
      end
      local.get 1
      i32.const 40
      i32.add
      local.get 1
      i32.const 88
      i32.add
      i32.const 1117380
      call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h51be37ad16cff75dE
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 2
      i32.load
      local.tee 0
      i32.const -1
      i32.add
      i32.store
      local.get 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9aa2316ba2f7fd45E
    end
    local.get 1
    i32.const 96
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0289fed98939d817E (type 4) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 2
    i32.load
    local.set 0
    local.get 2
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1024
        i32.const 1
        call $__rust_alloc
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store8 offset=28
        local.get 0
        i32.const 0
        i32.store8 offset=24
        local.get 0
        i64.const 1024
        i64.store offset=16 align=4
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        i64.const 0
        i64.store align=4
        return
      end
      i32.const 1114560
      i32.const 43
      i32.const 1116804
      call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
      unreachable
    end
    i32.const 1024
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
    unreachable)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h06860b6a6410417fE (type 4) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.set 2
    local.get 0
    i32.const 0
    i32.store
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 1114560
      i32.const 43
      i32.const 1116804
      call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.set 0
    local.get 2
    i32.const 1
    i32.store8
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    i64.const 4294967296
    i64.store offset=8 align=4
    local.get 0
    i64.const 0
    i64.store align=4
    local.get 0
    i32.const 24
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 0
    i32.store8 offset=28)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h45bfe2bc4758c031E (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=12
    local.get 2
    i32.const 12
    i32.add
    local.get 2
    call $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hd83033684052e150E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hd83033684052e150E (type 4) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 0
    i32.load8_u
    local.set 3
    local.get 0
    i32.const 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 0
          i32.store8 offset=15
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126084
            i32.const 3
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 15
            i32.add
            call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17he8fe2cef33927c4dE
          end
          block  ;; label = @4
            local.get 2
            i32.load8_u offset=15
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1126088
                i32.const 1126168
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load8_u offset=1126116
                local.set 3
                i32.const 1
                local.set 0
                i32.const 0
                i32.const 1
                i32.store8 offset=1126116
                local.get 3
                i32.const 1
                i32.and
                br_if 2 (;@4;)
                i32.const 0
                i32.const 1126168
                i32.store offset=1126088
                br 1 (;@5;)
              end
              i32.const 0
              i32.load offset=1126092
              i32.const 1
              i32.add
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
            end
            i32.const 0
            local.get 0
            i32.store offset=1126092
            i32.const 0
            i32.load offset=1126096
            br_if 3 (;@1;)
            i32.const 0
            i32.const -1
            i32.store offset=1126096
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1126112
              br_if 0 (;@5;)
              local.get 2
              i32.const 16
              i32.add
              i32.const 1126100
              call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h0edd742f511a041eE
              local.get 2
              i32.load8_u offset=16
              i32.const 3
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              local.tee 0
              i32.load
              local.get 0
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 3
                i32.const 4
                i32.add
                i32.load
                local.tee 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.load
                local.get 4
                local.get 3
                i32.const 8
                i32.add
                i32.load
                call $__rust_dealloc
              end
              local.get 0
              i32.const 12
              i32.const 4
              call $__rust_dealloc
            end
            block  ;; label = @5
              i32.const 0
              i32.load offset=1126104
              local.tee 0
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              i32.load offset=1126100
              local.get 0
              i32.const 1
              call $__rust_dealloc
            end
            i32.const 0
            i64.const 0
            i64.store offset=1126104 align=4
            i32.const 0
            i32.const 1
            i32.store offset=1126100
            i32.const 0
            i32.const 0
            i32.load offset=1126096
            i32.const 1
            i32.add
            i32.store offset=1126096
            i32.const 0
            i32.const 0
            i32.load offset=1126092
            i32.const -1
            i32.add
            local.tee 0
            i32.store offset=1126092
            i32.const 0
            i32.const 0
            i32.store8 offset=1126112
            local.get 0
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store8 offset=1126116
            i32.const 0
            i32.const 0
            i32.store offset=1126088
          end
          local.get 2
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 1114560
        i32.const 43
        i32.const 1116732
        call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
        unreachable
      end
      i32.const 1117020
      i32.const 38
      i32.const 1117096
      call $_ZN4core6option13expect_failed17hcf804cb32a829b38E
      unreachable
    end
    i32.const 1114460
    i32.const 16
    local.get 2
    i32.const 24
    i32.add
    i32.const 1114476
    i32.const 1116268
    call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
    unreachable)
  (func $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E (type 11) (result i32)
    i32.const 0
    i32.load offset=1126180
    i32.eqz)
  (func $_ZN4core9panicking13assert_failed17h08c93d381fb8d0bcE (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1114492
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    i32.const 0
    local.get 2
    i32.const 1114528
    local.get 2
    i32.const 4
    i32.add
    i32.const 1114528
    local.get 2
    i32.const 8
    i32.add
    i32.const 1118848
    call $_ZN4core9panicking19assert_failed_inner17h3cf26e90bb2bb66aE
    unreachable)
  (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h61ab529aded2fc2cE (type 1) (param i32))
  (func $_ZN4core3ptr103drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$17hf6e24c9b2d9bea52E (type 1) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1126148
      i32.const 2147483647
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.store8 offset=1
    end
    local.get 1
    i32.const 0
    i32.store8)
  (func $_ZN4core3ptr205drop_in_place$LT$$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$..from..StringError$GT$17h26e90a7900e7db30E (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9aa2316ba2f7fd45E (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store8
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.const 8
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h3b279e2ce9295673E (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h7b28bbb2e671bb66E (type 1) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.const 4
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        i32.load
        call $__rust_dealloc
      end
      local.get 0
      i32.load offset=4
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h93db41315d613018E (type 1) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.const 4
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        i32.load
        call $__rust_dealloc
      end
      local.get 0
      i32.load offset=8
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core9panicking13assert_failed17h9713e007d5e1e6c5E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 1119160
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 1
    i64.load align=4
    i64.store offset=8
    i32.const 0
    local.get 3
    i32.const 1114544
    local.get 3
    i32.const 4
    i32.add
    i32.const 1114544
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking19assert_failed_inner17h3cf26e90bb2bb66aE
    unreachable)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h285587d80ca8cdf3E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt5Write10write_char17h457e47b014ef05bbE)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hbea75e0a50af8d9dE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt5Write10write_char17h752200e4b714b6b6E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hc28da4f4a11ab1b5E (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 2048
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            local.set 1
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 0
            i32.load offset=4
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hb7754d452fa15dc4E
            local.get 0
            i32.load offset=8
            local.set 3
          end
          local.get 0
          local.get 3
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 0
          i32.load
          local.get 3
          i32.add
          local.get 1
          i32.store8
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 65536
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 7
          i32.and
          i32.const 240
          i32.or
          i32.store8 offset=12
          i32.const 4
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 224
        i32.or
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        i32.const 3
        local.set 1
      end
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        local.get 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
      local.get 0
      local.get 3
      local.get 1
      i32.add
      i32.store offset=8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hb7754d452fa15dc4E (type 4) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 3
        i32.const 1
        i32.shl
        local.tee 4
        local.get 1
        local.get 4
        local.get 1
        i32.gt_u
        select
        local.tee 1
        i32.const 8
        local.get 1
        i32.const 8
        i32.gt_u
        select
        local.tee 1
        i32.const -1
        i32.xor
        i32.const 31
        i32.shr_u
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 1
            i32.store offset=24
            local.get 2
            local.get 3
            i32.store offset=20
            local.get 2
            local.get 0
            i32.load
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 2
          i32.const 0
          i32.store offset=24
        end
        local.get 2
        local.get 1
        local.get 4
        local.get 2
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h020b67df34d2433eE
        local.get 2
        i32.load offset=4
        local.set 3
        block  ;; label = @3
          local.get 2
          i32.load
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 1
          i32.store
          br 2 (;@1;)
        end
        local.get 2
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.const -2147483647
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff8f3f5e501dc156E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=12
            i32.const 4
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17had05ad74dd2a4217E
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h1c59a0372847abceE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1114364
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h30fd4b35974510aeE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1114388
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7ac5aed1b9d4c4ceE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1114436
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hfe7b876e5c97fd7dE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1114412
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h693e44cab8e1ffd0E (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.load
      local.tee 0
      i32.const 4
      i32.add
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 0
    i32.load
    local.get 3
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb2acd698a29e5610E (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17had05ad74dd2a4217E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb33aa745e1005fe5E (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 4
      i32.add
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 0
    i32.load
    local.get 3
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17heec6153fd2df74e5E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17hf5777b820d3088c8E
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=8
      local.tee 2
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.load offset=8
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 5
          i32.const 4
          i32.add
          i32.load
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load
          local.get 6
          local.get 5
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 1
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i64.store offset=4 align=4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.ne)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9ebc19cc34e1dceE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.get 1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17had97f4230f28546bE)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h02b3aea1cbfdedf0E (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 12
      i32.add
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN5alloc7raw_vec11finish_grow17h020b67df34d2433eE (type 12) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 0
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=8
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.load offset=4
                  local.tee 4
                  br_if 1 (;@6;)
                  local.get 1
                  br_if 3 (;@4;)
                  local.get 2
                  local.set 3
                  br 4 (;@3;)
                end
                local.get 0
                i32.const 8
                i32.add
                i32.const 0
                i32.store
                br 5 (;@1;)
              end
              local.get 3
              i32.load
              local.get 4
              local.get 2
              local.get 1
              call $__rust_realloc
              local.set 3
              br 2 (;@3;)
            end
            local.get 1
            br_if 0 (;@4;)
            local.get 2
            local.set 3
            br 1 (;@3;)
          end
          local.get 1
          local.get 2
          call $__rust_alloc
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          i32.store
          local.get 0
          i32.const 0
          i32.store
          return
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 0
      i32.store
    end
    local.get 0
    i32.const 1
    i32.store)
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h3555577e3b4288d1E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h23a604b7ebd5d791E)
  (func $_ZN70_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h04f169701216d09dE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.store offset=8
        local.get 1
        i32.const 1114800
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        i32.const 1114804
        call $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h0e5f2a7fc3910ee2E
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const 1114779
      i32.const 3
      local.get 2
      i32.const 12
      i32.add
      i32.const 1114784
      call $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h0e5f2a7fc3910ee2E
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std10sys_common4once7generic4Once4call17h34de1d7e09d4fbbfE (type 13) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 8
    i32.add
    i32.const 2
    i32.or
    local.set 6
    local.get 0
    i32.load
    local.set 7
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 7
                                  local.tee 8
                                  br_table 1 (;@14;) 0 (;@15;) 3 (;@12;) 2 (;@13;) 3 (;@12;)
                                end
                                local.get 1
                                i32.eqz
                                br_if 3 (;@11;)
                              end
                              local.get 0
                              i32.const 2
                              local.get 0
                              i32.load
                              local.tee 7
                              local.get 7
                              local.get 8
                              i32.eq
                              local.tee 9
                              select
                              i32.store
                              local.get 9
                              i32.eqz
                              br_if 12 (;@1;)
                              local.get 5
                              local.get 8
                              i32.const 1
                              i32.eq
                              i32.store8 offset=12
                              local.get 5
                              i32.const 3
                              i32.store offset=8
                              local.get 2
                              local.get 5
                              i32.const 8
                              i32.add
                              local.get 3
                              i32.load offset=16
                              call_indirect (type 4)
                              local.get 0
                              i32.load
                              local.set 8
                              local.get 0
                              local.get 5
                              i32.load offset=8
                              i32.store
                              local.get 5
                              local.get 8
                              i32.const 3
                              i32.and
                              local.tee 7
                              i32.store
                              local.get 7
                              i32.const 2
                              i32.ne
                              br_if 8 (;@5;)
                              local.get 8
                              i32.const -2
                              i32.add
                              local.tee 7
                              i32.eqz
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 7
                                i32.load
                                local.set 8
                                local.get 7
                                i32.const 0
                                i32.store
                                local.get 8
                                i32.eqz
                                br_if 10 (;@4;)
                                local.get 7
                                i32.load offset=4
                                local.set 9
                                local.get 7
                                i32.const 1
                                i32.store8 offset=8
                                local.get 8
                                i32.const 24
                                i32.add
                                call $_ZN3std10sys_common13thread_parker7generic6Parker6unpark17h0f504c52f9de9876E
                                local.get 8
                                local.get 8
                                i32.load
                                local.tee 7
                                i32.const -1
                                i32.add
                                i32.store
                                block  ;; label = @15
                                  local.get 7
                                  i32.const 1
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 8
                                  call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9aa2316ba2f7fd45E
                                end
                                local.get 9
                                local.set 7
                                local.get 9
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 5
                            i32.const 32
                            i32.add
                            global.set $__stack_pointer
                            return
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 3
                            i32.and
                            i32.const 2
                            i32.ne
                            br_if 0 (;@12;)
                            loop  ;; label = @13
                              local.get 8
                              local.set 9
                              i32.const 0
                              i32.load offset=1126172
                              br_if 3 (;@10;)
                              i32.const 0
                              i32.const -1
                              i32.store offset=1126172
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1126176
                                local.tee 7
                                br_if 0 (;@14;)
                                i32.const 32
                                i32.const 8
                                call $__rust_alloc
                                local.tee 7
                                i32.eqz
                                br_if 5 (;@9;)
                                local.get 7
                                i64.const 4294967297
                                i64.store
                                local.get 7
                                i32.const 16
                                i32.add
                                i32.const 0
                                i32.store
                                i32.const 0
                                i64.load offset=1126152
                                local.set 10
                                loop  ;; label = @15
                                  local.get 10
                                  i64.const 1
                                  i64.add
                                  local.tee 11
                                  i64.eqz
                                  br_if 7 (;@8;)
                                  i32.const 0
                                  local.get 11
                                  i32.const 0
                                  i64.load offset=1126152
                                  local.tee 12
                                  local.get 12
                                  local.get 10
                                  i64.eq
                                  local.tee 8
                                  select
                                  i64.store offset=1126152
                                  local.get 12
                                  local.set 10
                                  local.get 8
                                  i32.eqz
                                  br_if 0 (;@15;)
                                end
                                local.get 7
                                i32.const 0
                                i32.store16 offset=28
                                local.get 7
                                local.get 11
                                i64.store offset=8
                                i32.const 0
                                local.get 7
                                i32.store offset=1126176
                                local.get 7
                                i32.const 24
                                i32.add
                                i32.const 0
                                i32.store
                              end
                              local.get 7
                              local.get 7
                              i32.load
                              local.tee 8
                              i32.const 1
                              i32.add
                              i32.store
                              local.get 8
                              i32.const -1
                              i32.le_s
                              br_if 6 (;@7;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1126172
                              i32.const 1
                              i32.add
                              i32.store offset=1126172
                              local.get 0
                              local.get 6
                              local.get 0
                              i32.load
                              local.tee 8
                              local.get 8
                              local.get 9
                              i32.eq
                              select
                              i32.store
                              local.get 5
                              i32.const 0
                              i32.store8 offset=16
                              local.get 5
                              local.get 7
                              i32.store offset=8
                              local.get 5
                              local.get 9
                              i32.const -4
                              i32.and
                              i32.store offset=12
                              block  ;; label = @14
                                local.get 8
                                local.get 9
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 5
                                i32.load8_u offset=16
                                i32.eqz
                                br_if 8 (;@6;)
                                br 11 (;@3;)
                              end
                              block  ;; label = @14
                                local.get 5
                                i32.load offset=8
                                local.tee 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                local.get 7
                                i32.load
                                local.tee 9
                                i32.const -1
                                i32.add
                                i32.store
                                local.get 9
                                i32.const 1
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 5
                                i32.load offset=8
                                call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9aa2316ba2f7fd45E
                              end
                              local.get 8
                              i32.const 3
                              i32.and
                              i32.const 2
                              i32.eq
                              br_if 0 (;@13;)
                              br 11 (;@2;)
                            end
                          end
                          i32.const 1119044
                          i32.const 64
                          local.get 4
                          call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
                          unreachable
                        end
                        local.get 5
                        i32.const 28
                        i32.add
                        i32.const 0
                        i32.store
                        local.get 5
                        i32.const 1114460
                        i32.store offset=24
                        local.get 5
                        i64.const 1
                        i64.store offset=12 align=4
                        local.get 5
                        i32.const 1119152
                        i32.store offset=8
                        local.get 5
                        i32.const 8
                        i32.add
                        local.get 4
                        call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
                        unreachable
                      end
                      i32.const 1114460
                      i32.const 16
                      local.get 5
                      i32.const 1114476
                      i32.const 1117156
                      call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
                      unreachable
                    end
                    i32.const 32
                    i32.const 8
                    call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
                    unreachable
                  end
                  call $_ZN3std6thread8ThreadId3new9exhausted17h86b428c236e2681eE
                  unreachable
                end
                unreachable
                unreachable
              end
              loop  ;; label = @6
                call $_ZN3std6thread4park17habe54b82e94d0603E
                local.get 5
                i32.load8_u offset=16
                i32.eqz
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            local.get 5
            i32.const 0
            i32.store offset=8
            local.get 5
            local.get 5
            i32.const 8
            i32.add
            i32.const 1119208
            call $_ZN4core9panicking13assert_failed17h9713e007d5e1e6c5E
            unreachable
          end
          i32.const 1114560
          i32.const 43
          i32.const 1119224
          call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
          unreachable
        end
        local.get 5
        i32.load offset=8
        local.tee 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        local.get 8
        i32.load
        local.tee 7
        i32.const -1
        i32.add
        i32.store
        local.get 7
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=8
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9aa2316ba2f7fd45E
        local.get 0
        i32.load
        local.set 7
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 7
      br 0 (;@1;)
    end)
  (func $_ZN3std2rt19lang_start_internal17hd1ed3ac7f4390765E (type 14) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 8
    i32.add
    i32.const 1114820
    i32.const 4
    call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h2748fc54cbeafbadE
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.load offset=12
        br_if 0 (;@2;)
        local.get 5
        i32.const 20
        i32.add
        i32.load
        local.set 6
        local.get 5
        i32.load offset=16
        local.set 7
        i32.const 32
        i32.const 8
        call $__rust_alloc
        local.tee 8
        i32.eqz
        br_if 1 (;@1;)
        local.get 8
        local.get 6
        i32.store offset=20
        local.get 8
        i64.const 4294967297
        i64.store
        local.get 8
        i32.const 16
        i32.add
        local.get 7
        i32.store
        i32.const 0
        i64.load offset=1126152
        local.set 9
        block  ;; label = @3
          loop  ;; label = @4
            local.get 9
            i64.const 1
            i64.add
            local.tee 10
            i64.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.get 10
            i32.const 0
            i64.load offset=1126152
            local.tee 11
            local.get 11
            local.get 9
            i64.eq
            local.tee 6
            select
            i64.store offset=1126152
            local.get 11
            local.set 9
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 8
          i32.const 0
          i32.store16 offset=28
          local.get 8
          local.get 10
          i64.store offset=8
          local.get 8
          i32.const 24
          i32.add
          i32.const 0
          i32.store
          local.get 8
          call $_ZN3std10sys_common11thread_info3set17h9091d14fc3308354E
          local.get 0
          local.get 1
          i32.const 20
          i32.add
          i32.load
          call_indirect (type 5)
          local.set 6
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126076
            i32.const 3
            i32.eq
            br_if 0 (;@4;)
            local.get 5
            i32.const 1
            i32.store8 offset=40
            local.get 5
            local.get 5
            i32.const 40
            i32.add
            i32.store offset=72
            i32.const 1126076
            i32.const 0
            local.get 5
            i32.const 72
            i32.add
            i32.const 1116684
            i32.const 1114936
            call $_ZN3std10sys_common4once7generic4Once4call17h34de1d7e09d4fbbfE
          end
          local.get 5
          i32.const 112
          i32.add
          global.set $__stack_pointer
          local.get 6
          return
        end
        call $_ZN3std6thread8ThreadId3new9exhausted17h86b428c236e2681eE
        unreachable
      end
      local.get 5
      local.get 5
      i32.const 8
      i32.add
      i32.store offset=28
      local.get 5
      i32.const 40
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 5
      i32.const 72
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 5
      i64.const 2
      i64.store offset=44 align=4
      local.get 5
      i32.const 1114848
      i32.store offset=40
      local.get 5
      i32.const 10
      i32.store offset=68
      local.get 5
      i64.const 1
      i64.store offset=76 align=4
      local.get 5
      i32.const 1114904
      i32.store offset=72
      local.get 5
      i32.const 11
      i32.store offset=100
      local.get 5
      local.get 5
      i32.const 64
      i32.add
      i32.store offset=56
      local.get 5
      local.get 5
      i32.const 72
      i32.add
      i32.store offset=64
      local.get 5
      local.get 5
      i32.const 96
      i32.add
      i32.store offset=88
      local.get 5
      local.get 5
      i32.const 28
      i32.add
      i32.store offset=96
      local.get 5
      i32.const 32
      i32.add
      local.get 5
      i32.const 104
      i32.add
      local.get 5
      i32.const 40
      i32.add
      call $_ZN3std2io5Write9write_fmt17h64829f9327d5207bE
      local.get 5
      i32.const 32
      i32.add
      call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h7b28bbb2e671bb66E
      call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
      unreachable
    end
    i32.const 32
    i32.const 8
    call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
    unreachable)
  (func $_ZN3std10sys_common11thread_info3set17h9091d14fc3308354E (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1126172
        br_if 0 (;@2;)
        i32.const 0
        i32.const -1
        i32.store offset=1126172
        i32.const 0
        i32.load offset=1126176
        br_if 1 (;@1;)
        i32.const 0
        local.get 0
        i32.store offset=1126176
        i32.const 0
        i32.const 0
        i32.store offset=1126172
        local.get 1
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 1114460
      i32.const 16
      local.get 1
      i32.const 40
      i32.add
      i32.const 1114476
      i32.const 1117172
      call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
      unreachable
    end
    local.get 1
    i32.const 8
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 1
    i32.const 40
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i64.const 2
    i64.store offset=12 align=4
    local.get 1
    i32.const 1114848
    i32.store offset=8
    local.get 1
    i32.const 10
    i32.store offset=36
    local.get 1
    i32.const 1114460
    i32.store offset=56
    local.get 1
    i64.const 1
    i64.store offset=44 align=4
    local.get 1
    i32.const 1117228
    i32.store offset=40
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 1
    local.get 1
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 1
    local.get 1
    i32.const 40
    i32.add
    local.get 1
    i32.const 8
    i32.add
    call $_ZN3std2io5Write9write_fmt17h64829f9327d5207bE
    local.get 1
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h7b28bbb2e671bb66E
    call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
    unreachable)
  (func $_ZN3std6thread8ThreadId3new9exhausted17h86b428c236e2681eE (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1114460
    i32.store offset=24
    local.get 0
    i64.const 1
    i64.store offset=12 align=4
    local.get 0
    i32.const 1115148
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1115156
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN3std2io5Write9write_fmt17h64829f9327d5207bE (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.store8 offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 8
        i32.add
        i32.const 1116540
        local.get 3
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h5b57237fcc58ee88E
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=12
          i32.const 4
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 1116580
          i32.store offset=4
          local.get 0
          i32.const 2
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        i64.load offset=12 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.store8
      local.get 3
      i32.load8_u offset=12
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load
      local.tee 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 1
        local.get 0
        i32.const 8
        i32.add
        i32.load
        call $__rust_dealloc
      end
      local.get 3
      i32.load offset=16
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE (type 0)
    call $abort
    unreachable)
  (func $_ZN3std10sys_common13thread_parker7generic6Parker6unpark17h0f504c52f9de9876E (type 1) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.const 2
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_table 2 (;@1;) 1 (;@2;) 2 (;@1;) 0 (;@3;)
        end
        local.get 1
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 1
        i32.const 1114460
        i32.store offset=24
        local.get 1
        i64.const 1
        i64.store offset=12 align=4
        local.get 1
        i32.const 1119456
        i32.store offset=8
        local.get 1
        i32.const 8
        i32.add
        i32.const 1119464
        call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
        unreachable
      end
      local.get 0
      i32.load8_u offset=4
      local.set 2
      local.get 0
      i32.const 1
      i32.store8 offset=4
      local.get 1
      local.get 2
      i32.const 1
      i32.and
      local.tee 2
      i32.store8 offset=7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            i32.const 4
            i32.add
            local.set 2
            i32.const 0
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1126148
                i32.const 2147483647
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
                local.set 3
                block  ;; label = @7
                  local.get 0
                  i32.load8_u offset=5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 1
                  i32.xor
                  local.set 3
                  br 2 (;@5;)
                end
                local.get 3
                i32.eqz
                br_if 4 (;@2;)
                br 3 (;@3;)
              end
              local.get 0
              i32.load8_u offset=5
              i32.eqz
              br_if 2 (;@3;)
            end
            local.get 1
            local.get 3
            i32.store8 offset=12
            local.get 1
            local.get 2
            i32.store offset=8
            i32.const 1114736
            i32.const 43
            local.get 1
            i32.const 8
            i32.add
            i32.const 1119240
            i32.const 1119480
            call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
            unreachable
          end
          local.get 1
          i32.const 0
          i32.store offset=28
          local.get 1
          i32.const 1114460
          i32.store offset=24
          local.get 1
          i64.const 1
          i64.store offset=12 align=4
          local.get 1
          i32.const 1118784
          i32.store offset=8
          local.get 1
          i32.const 7
          i32.add
          local.get 1
          i32.const 8
          i32.add
          call $_ZN4core9panicking13assert_failed17h08c93d381fb8d0bcE
          unreachable
        end
        i32.const 0
        i32.load offset=1126148
        i32.const 2147483647
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
        br_if 0 (;@2;)
        local.get 0
        i32.const 1
        i32.store8 offset=5
      end
      local.get 2
      i32.const 0
      i32.store8
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std10sys_common11thread_info14current_thread17h238c31c145c0acbfE (type 11) (result i32)
    (local i32 i32 i64 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126172
            br_if 0 (;@4;)
            i32.const 0
            i32.const -1
            i32.store offset=1126172
            block  ;; label = @5
              i32.const 0
              i32.load offset=1126176
              local.tee 1
              br_if 0 (;@5;)
              i32.const 32
              i32.const 8
              call $__rust_alloc
              local.tee 1
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              i64.const 4294967297
              i64.store
              local.get 1
              i32.const 16
              i32.add
              i32.const 0
              i32.store
              i32.const 0
              i64.load offset=1126152
              local.set 2
              loop  ;; label = @6
                local.get 2
                i64.const 1
                i64.add
                local.tee 3
                i64.eqz
                br_if 4 (;@2;)
                i32.const 0
                local.get 3
                i32.const 0
                i64.load offset=1126152
                local.tee 4
                local.get 4
                local.get 2
                i64.eq
                local.tee 5
                select
                i64.store offset=1126152
                local.get 4
                local.set 2
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 1
              i32.const 0
              i32.store16 offset=28
              local.get 1
              local.get 3
              i64.store offset=8
              i32.const 0
              local.get 1
              i32.store offset=1126176
              local.get 1
              i32.const 24
              i32.add
              i32.const 0
              i32.store
            end
            local.get 1
            local.get 1
            i32.load
            local.tee 5
            i32.const 1
            i32.add
            i32.store
            local.get 5
            i32.const -1
            i32.le_s
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.load offset=1126172
            i32.const 1
            i32.add
            i32.store offset=1126172
            local.get 0
            i32.const 16
            i32.add
            global.set $__stack_pointer
            local.get 1
            return
          end
          i32.const 1114460
          i32.const 16
          local.get 0
          i32.const 8
          i32.add
          i32.const 1114476
          i32.const 1117156
          call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
          unreachable
        end
        i32.const 32
        i32.const 8
        call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
        unreachable
      end
      call $_ZN3std6thread8ThreadId3new9exhausted17h86b428c236e2681eE
      unreachable
    end
    unreachable
    unreachable)
  (func $_ZN3std6thread4park17habe54b82e94d0603E (type 0)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                call $_ZN3std10sys_common11thread_info14current_thread17h238c31c145c0acbfE
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.const 24
                i32.add
                local.tee 2
                i32.const 0
                local.get 2
                i32.load
                local.tee 2
                local.get 2
                i32.const 2
                i32.eq
                local.tee 2
                select
                i32.store
                block  ;; label = @7
                  local.get 2
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 28
                  i32.add
                  local.tee 3
                  i32.load8_u
                  local.set 2
                  local.get 3
                  i32.const 1
                  i32.store8
                  local.get 0
                  local.get 2
                  i32.const 1
                  i32.and
                  local.tee 2
                  i32.store8 offset=4
                  local.get 2
                  br_if 2 (;@5;)
                  i32.const 0
                  local.set 4
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1126148
                    i32.const 2147483647
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
                    i32.const 1
                    i32.xor
                    local.set 4
                  end
                  local.get 1
                  i32.load8_u offset=29
                  br_if 3 (;@4;)
                  local.get 1
                  local.get 1
                  i32.load offset=24
                  local.tee 2
                  i32.const 1
                  local.get 2
                  select
                  i32.store offset=24
                  local.get 2
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 2
                  i32.const 2
                  i32.ne
                  br_if 4 (;@3;)
                  local.get 1
                  i32.load offset=24
                  local.set 2
                  local.get 1
                  i32.const 0
                  i32.store offset=24
                  local.get 0
                  local.get 2
                  i32.store offset=4
                  local.get 2
                  i32.const 2
                  i32.ne
                  br_if 5 (;@2;)
                  block  ;; label = @8
                    local.get 4
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.load offset=1126148
                    i32.const 2147483647
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 1
                    i32.store8 offset=29
                  end
                  local.get 3
                  i32.const 0
                  i32.store8
                end
                local.get 1
                local.get 1
                i32.load
                local.tee 2
                i32.const -1
                i32.add
                i32.store
                block  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 1
                  call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9aa2316ba2f7fd45E
                end
                local.get 0
                i32.const 32
                i32.add
                global.set $__stack_pointer
                return
              end
              i32.const 1114952
              i32.const 94
              i32.const 1115076
              call $_ZN4core6option13expect_failed17hcf804cb32a829b38E
              unreachable
            end
            local.get 0
            i32.const 0
            i32.store offset=28
            local.get 0
            i32.const 1114460
            i32.store offset=24
            local.get 0
            i64.const 1
            i64.store offset=12 align=4
            local.get 0
            i32.const 1118784
            i32.store offset=8
            local.get 0
            i32.const 4
            i32.add
            local.get 0
            i32.const 8
            i32.add
            call $_ZN4core9panicking13assert_failed17h08c93d381fb8d0bcE
            unreachable
          end
          local.get 0
          local.get 4
          i32.store8 offset=12
          local.get 0
          local.get 3
          i32.store offset=8
          i32.const 1114736
          i32.const 43
          local.get 0
          i32.const 8
          i32.add
          i32.const 1119240
          i32.const 1119308
          call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
          unreachable
        end
        local.get 0
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 0
        i32.const 1114460
        i32.store offset=24
        local.get 0
        i64.const 1
        i64.store offset=12 align=4
        local.get 0
        i32.const 1119348
        i32.store offset=8
        local.get 0
        i32.const 8
        i32.add
        i32.const 1119356
        call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
        unreachable
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i32.const 1114460
      i32.store offset=24
      local.get 0
      i64.const 1
      i64.store offset=12 align=4
      local.get 0
      i32.const 1119404
      i32.store offset=8
      local.get 0
      i32.const 4
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i32.const 1119412
      call $_ZN4core9panicking13assert_failed17h9713e007d5e1e6c5E
      unreachable
    end
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1114460
    i32.store offset=24
    local.get 0
    i64.const 1
    i64.store offset=12 align=4
    local.get 0
    i32.const 1118672
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1118736
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN3std3env11current_dir17h64d71e4e47161586E (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 512
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 512
            i32.const 1
            call $__rust_alloc
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 512
            i32.store offset=4
            local.get 1
            local.get 3
            i32.store
            local.get 3
            i32.const 512
            call $getcwd
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1126680
                  local.tee 2
                  i32.const 68
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 512
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 0
                i64.const 0
                i64.store align=4
                local.get 0
                i32.const 8
                i32.add
                local.get 2
                i32.store
                i32.const 512
                local.set 2
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 1
                local.get 2
                i32.store offset=8
                local.get 1
                local.get 2
                i32.const 1
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
                local.get 1
                i32.load
                local.tee 3
                local.get 1
                i32.load offset=4
                local.tee 2
                call $getcwd
                br_if 3 (;@3;)
                i32.const 0
                i32.load offset=1126680
                local.tee 4
                i32.const 68
                i32.eq
                br_if 0 (;@6;)
              end
              local.get 0
              i64.const 0
              i64.store align=4
              local.get 0
              i32.const 8
              i32.add
              local.get 4
              i32.store
              local.get 2
              i32.eqz
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 2
            i32.const 1
            call $__rust_dealloc
            br 2 (;@2;)
          end
          i32.const 512
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
          unreachable
        end
        local.get 1
        local.get 3
        call $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17hdb0207568f273009E
        local.tee 4
        i32.store offset=8
        block  ;; label = @3
          local.get 2
          local.get 4
          i32.le_u
          br_if 0 (;@3;)
          i32.const 1
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -1
                  i32.gt_s
                  br_if 2 (;@5;)
                  local.get 4
                  i32.const 1
                  call $__rust_alloc
                  local.tee 5
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  local.get 3
                  local.get 4
                  call $memcpy
                  drop
                end
                local.get 3
                local.get 2
                i32.const 1
                call $__rust_dealloc
                br 2 (;@4;)
              end
              call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
              unreachable
            end
            local.get 3
            local.get 2
            i32.const 1
            local.get 4
            call $__rust_realloc
            local.tee 5
            i32.eqz
            br_if 3 (;@1;)
          end
          local.get 1
          local.get 4
          i32.store offset=4
          local.get 1
          local.get 5
          i32.store
        end
        local.get 0
        local.get 1
        i64.load
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 4
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
    unreachable)
  (func $_ZN3std3env7_var_os17h558b5fef9fa42fecE (type 6) (param i32 i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 416
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 383
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        local.get 2
        call $memcpy
        drop
        local.get 3
        i32.const 16
        i32.add
        local.get 2
        i32.add
        i32.const 0
        i32.store8
        local.get 3
        i32.const 400
        i32.add
        local.get 3
        i32.const 16
        i32.add
        local.get 2
        i32.const 1
        i32.add
        call $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hec61a4c7670b444bE
        block  ;; label = @3
          local.get 3
          i32.load offset=400
          br_if 0 (;@3;)
          i32.const 4
          local.set 2
          local.get 3
          i32.load offset=404
          call $getenv
          local.set 1
          local.get 3
          i32.const 4
          i32.store8 offset=8
          local.get 3
          local.get 1
          i32.store offset=12
          br 2 (;@1;)
        end
        local.get 3
        i32.const 0
        i64.load offset=1116888
        local.tee 4
        i64.store offset=8
        local.get 4
        i32.wrap_i64
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      call $_ZN3std3sys6common14small_c_string24run_with_cstr_allocating17h5e10f1790bfa7966E
      local.get 3
      i32.load8_u offset=8
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.and
            i32.const 4
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.load8_u offset=8
              i32.const 3
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=12
              local.tee 2
              i32.load
              local.get 2
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 1
                i32.const 4
                i32.add
                i32.load
                local.tee 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.load
                local.get 5
                local.get 1
                i32.const 8
                i32.add
                i32.load
                call $__rust_dealloc
              end
              local.get 2
              i32.const 12
              i32.const 4
              call $__rust_dealloc
            end
            local.get 0
            i32.const 0
            i32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                call $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17hdb0207568f273009E
                local.tee 2
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                br 1 (;@5;)
              end
              local.get 2
              i32.const -1
              i32.gt_s
              local.tee 6
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              local.get 6
              call $__rust_alloc
              local.tee 5
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 5
            local.get 1
            local.get 2
            call $memcpy
            local.set 1
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 0
            local.get 2
            i32.store offset=4
            local.get 0
            local.get 1
            i32.store
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          i32.store
        end
        local.get 3
        i32.const 416
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
      unreachable
    end
    local.get 2
    local.get 6
    call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
    unreachable)
  (func $_ZN3std3env4_var17hf749d4dbbb8f71d4E (type 6) (param i32 i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    call $_ZN3std3env7_var_os17h558b5fef9fa42fecE
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=8
        local.tee 2
        br_if 0 (;@2;)
        local.get 0
        i64.const 1
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 1
      local.get 3
      i32.const 56
      i32.add
      local.get 2
      local.get 3
      i32.load offset=16
      local.tee 4
      call $_ZN4core3str8converts9from_utf817h20170b44b7a24c68E
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=56
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i64.load offset=60 align=4
            local.tee 5
            i64.const 1095216660480
            i64.and
            i64.const 8589934592
            i64.ne
            br_if 1 (;@3;)
          end
          local.get 3
          i32.const 40
          i32.add
          i32.const 8
          i32.add
          local.get 1
          i32.store
          local.get 3
          i32.const 24
          i32.add
          i32.const 8
          i32.add
          local.get 4
          i32.store
          local.get 3
          local.get 2
          i32.store offset=44
          local.get 3
          local.get 3
          i64.load offset=44 align=4
          i64.store offset=24
          local.get 0
          i32.const 4
          i32.add
          local.set 2
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        local.get 5
        i64.store offset=68 align=4
        local.get 3
        local.get 4
        i32.store offset=64
        local.get 3
        local.get 1
        i32.store offset=60
        local.get 3
        local.get 2
        i32.store offset=56
        local.get 3
        i32.const 40
        i32.add
        i32.const 4
        i32.or
        local.get 3
        i32.const 56
        i32.add
        call $_ZN5alloc6string13FromUtf8Error10into_bytes17haa9474c013282de1E
        local.get 3
        i32.const 32
        i32.add
        local.get 3
        i32.const 52
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 3
        i64.load offset=44 align=4
        i64.store offset=24
        local.get 0
        i32.const 4
        i32.add
        local.set 2
        i32.const 1
        local.set 1
      end
      local.get 2
      local.get 3
      i64.load offset=24
      i64.store align=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
    end
    local.get 3
    i32.const 80
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std3sys6common14small_c_string24run_with_cstr_allocating17h5e10f1790bfa7966E (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    local.get 2
    call $_ZN81_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h626d82938c781d77E
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=4
        local.tee 2
        br_if 0 (;@2;)
        local.get 3
        i32.const 12
        i32.add
        i32.load
        local.set 2
        local.get 3
        i32.load offset=8
        local.tee 1
        call $getenv
        local.set 4
        local.get 0
        i32.const 4
        i32.store8
        local.get 0
        local.get 4
        i32.store offset=4
        local.get 1
        i32.const 0
        i32.store8
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        i32.const 1
        call $__rust_dealloc
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i64.load offset=1116888
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h09e62c93dc83d02dE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;) 0 (;@5;)
            end
            local.get 2
            local.get 0
            i32.load offset=4
            local.tee 0
            i32.store offset=4
            local.get 2
            i32.const 8
            i32.add
            local.get 0
            call $_ZN3std3sys4wasi2os12error_string17h1f2b88a95d293082E
            local.get 2
            i32.const 60
            i32.add
            i32.const 2
            i32.store
            local.get 2
            i32.const 36
            i32.add
            i32.const 12
            i32.store
            local.get 2
            i64.const 3
            i64.store offset=44 align=4
            local.get 2
            i32.const 1116216
            i32.store offset=40
            local.get 2
            i32.const 13
            i32.store offset=28
            local.get 2
            local.get 2
            i32.const 24
            i32.add
            i32.store offset=56
            local.get 2
            local.get 2
            i32.const 4
            i32.add
            i32.store offset=32
            local.get 2
            local.get 2
            i32.const 8
            i32.add
            i32.store offset=24
            local.get 1
            local.get 2
            i32.const 40
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17hc01d3a4540d781feE
            local.set 0
            local.get 2
            i32.load offset=12
            local.tee 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.load offset=8
            local.get 1
            i32.const 1
            call $__rust_dealloc
            br 3 (;@1;)
          end
          local.get 0
          i32.load8_u offset=1
          local.set 0
          local.get 2
          i32.const 60
          i32.add
          i32.const 1
          i32.store
          local.get 2
          i64.const 1
          i64.store offset=44 align=4
          local.get 2
          i32.const 1115288
          i32.store offset=40
          local.get 2
          i32.const 14
          i32.store offset=12
          local.get 2
          local.get 0
          i32.const 32
          i32.xor
          i32.const 63
          i32.and
          i32.const 2
          i32.shl
          local.tee 0
          i32.const 1119496
          i32.add
          i32.load
          i32.store offset=28
          local.get 2
          local.get 0
          i32.const 1119752
          i32.add
          i32.load
          i32.store offset=24
          local.get 2
          local.get 2
          i32.const 8
          i32.add
          i32.store offset=56
          local.get 2
          local.get 2
          i32.const 24
          i32.add
          i32.store offset=8
          local.get 1
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt9Formatter9write_fmt17hc01d3a4540d781feE
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=4
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        local.get 1
        call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h23a604b7ebd5d791E
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.load
      local.get 1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type 2)
      local.set 0
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std3sys4wasi17decode_error_kind17h2104b06d09f796bdE (type 5) (param i32) (result i32)
    (local i32)
    i32.const 40
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 2
      local.set 1
      i32.const 1119010
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 3
      local.set 1
      i32.const 1119012
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 1
      local.set 1
      i32.const 1119014
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 1119016
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 11
      local.set 1
      i32.const 1119018
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 7
      local.set 1
      i32.const 1119020
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 6
      local.set 1
      i32.const 1119022
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 9
      local.set 1
      i32.const 1119024
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 8
      local.set 1
      i32.const 1119026
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      i32.const 1119028
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 35
      local.set 1
      i32.const 1119030
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 20
      local.set 1
      i32.const 1119032
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 22
      local.set 1
      i32.const 1119034
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 12
      local.set 1
      i32.const 1119036
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 13
      local.set 1
      i32.const 1119038
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 36
      local.set 1
      i32.const 1119040
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      br_if 0 (;@1;)
      i32.const 38
      i32.const 40
      i32.const 1119042
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i32.const 65535
      i32.and
      local.get 0
      i32.eq
      select
      local.set 1
    end
    local.get 1)
  (func $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h0edd742f511a041eE (type 4) (param i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.add
          i32.load
          local.tee 3
          br_if 0 (;@3;)
          local.get 0
          i32.const 4
          i32.store8
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 4
        i32.const 1115220
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.const 2
        i64.or
        local.set 5
        i32.const 0
        local.set 6
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 6
              i32.lt_u
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              local.get 6
              i32.sub
              local.tee 7
              i32.store offset=12
              local.get 2
              local.get 4
              local.get 6
              i32.add
              local.tee 8
              i32.store offset=8
              local.get 2
              i32.const 16
              i32.add
              i32.const 1
              local.get 2
              i32.const 8
              i32.add
              i32.const 1
              call $_ZN4wasi13lib_generated8fd_write17h7be21fbc857d7403E
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.load16_u offset=16
                      br_if 0 (;@9;)
                      local.get 2
                      i32.load offset=20
                      local.set 9
                      br 1 (;@8;)
                    end
                    local.get 2
                    local.get 2
                    i32.load16_u offset=18
                    i32.store16 offset=30
                    local.get 7
                    local.set 9
                    local.get 2
                    i32.const 30
                    i32.add
                    call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
                    local.tee 10
                    i32.const 65535
                    i32.and
                    local.tee 11
                    i32.const 1119008
                    call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
                    i32.const 65535
                    i32.and
                    i32.ne
                    br_if 1 (;@7;)
                  end
                  local.get 1
                  i32.const 0
                  i32.store8 offset=12
                  local.get 9
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 9
                  local.get 6
                  i32.add
                  local.set 6
                  br 3 (;@4;)
                end
                local.get 1
                i32.const 0
                i32.store8 offset=12
                local.get 11
                call $_ZN3std3sys4wasi17decode_error_kind17h2104b06d09f796bdE
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 2 (;@4;)
                local.get 10
                i64.extend_i32_u
                i64.const 65535
                i64.and
                i64.const 32
                i64.shl
                local.set 5
              end
              local.get 0
              local.get 5
              i64.store align=4
              local.get 6
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              i32.const 8
              i32.add
              local.tee 9
              i32.const 0
              i32.store
              local.get 3
              local.get 6
              i32.eq
              br_if 3 (;@2;)
              local.get 4
              local.get 8
              local.get 7
              call $memmove
              drop
              local.get 9
              local.get 7
              i32.store
              br 3 (;@2;)
            end
            local.get 6
            local.get 3
            i32.const 1115272
            call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
            unreachable
          end
          local.get 3
          local.get 6
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 6
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 8
        i32.add
        local.tee 9
        i32.const 0
        i32.store
        local.get 3
        local.get 6
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.tee 7
        local.get 7
        local.get 6
        i32.add
        local.get 3
        local.get 6
        i32.sub
        local.tee 6
        call $memmove
        drop
        local.get 9
        local.get 6
        i32.store
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 6
    local.get 3
    i32.const 1114720
    call $_ZN4core5slice5index24slice_end_index_len_fail17h76f0ffa9e366375aE
    unreachable)
  (func $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hc457a2b43044abc4E (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        local.get 1
        i32.load offset=8
        i32.sub
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 8
        i32.add
        local.get 1
        call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h0edd742f511a041eE
        block  ;; label = @3
          local.get 4
          i32.load8_u offset=8
          local.tee 5
          i32.const 4
          i32.ne
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=4
          local.set 5
          br 1 (;@2;)
        end
        local.get 4
        local.get 4
        i32.load offset=12 align=1
        i32.store offset=3 align=1
        local.get 4
        local.get 4
        i32.load offset=9 align=1
        i32.store
        local.get 0
        i32.const 4
        i32.add
        local.get 4
        i32.load offset=3 align=1
        i32.store align=1
        local.get 0
        local.get 4
        i32.load
        i32.store offset=1 align=1
        local.get 0
        local.get 5
        i32.store8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 5
        local.get 3
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 5
        i32.add
        local.get 2
        local.get 3
        call $memcpy
        drop
        local.get 0
        i32.const 4
        i32.store8
        local.get 1
        local.get 5
        local.get 3
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1
      i32.store8 offset=12
      local.get 4
      i32.const 8
      i32.add
      local.get 2
      local.get 3
      call $_ZN3std2io5Write9write_all17h975295fc7cdc6a1dE
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load8_u offset=8
          local.tee 3
          i32.const 4
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 0 (;@5;) 0 (;@5;)
            end
            local.get 4
            i32.load offset=12
            local.set 5
          end
          i32.const 1119008
          call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
          local.set 2
          local.get 3
          br_if 0 (;@3;)
          i64.const 4
          local.set 6
          local.get 5
          local.get 2
          i32.const 65535
          i32.and
          i32.eq
          br_if 1 (;@2;)
        end
        local.get 4
        i64.load offset=8
        local.set 6
      end
      local.get 0
      local.get 6
      i64.store align=4
      local.get 1
      i32.const 0
      i32.store8 offset=12
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h284f2ef85a008e91E (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN3std2io5error82_$LT$impl$u20$core..fmt..Debug$u20$for$u20$std..io..error..repr_unpacked..Repr$GT$3fmt17hf6e046a44867bc5aE)
  (func $_ZN3std3sys4wasi2os12error_string17h1f2b88a95d293082E (type 4) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 1056
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.const 0
          i32.const 1024
          call $memset
          local.tee 2
          i32.const 1024
          call $strerror_r
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 2
          i32.const 1024
          i32.add
          local.get 2
          local.get 2
          call $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17hdb0207568f273009E
          call $_ZN4core3str8converts9from_utf817h20170b44b7a24c68E
          block  ;; label = @4
            local.get 2
            i32.load offset=1024
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=1028
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 1032
                i32.add
                i32.load
                local.tee 1
                br_if 0 (;@6;)
                i32.const 1
                local.set 4
                br 1 (;@5;)
              end
              local.get 1
              i32.const -1
              i32.gt_s
              local.tee 5
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              local.get 5
              call $__rust_alloc
              local.tee 4
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 4
            local.get 3
            local.get 1
            call $memcpy
            local.set 3
            local.get 0
            local.get 1
            i32.store offset=8
            local.get 0
            local.get 1
            i32.store offset=4
            local.get 0
            local.get 3
            i32.store
            local.get 2
            i32.const 1056
            i32.add
            global.set $__stack_pointer
            return
          end
          local.get 2
          local.get 2
          i64.load offset=1028 align=4
          i64.store offset=1048
          i32.const 1114736
          i32.const 43
          local.get 2
          i32.const 1048
          i32.add
          i32.const 1118976
          i32.const 1118992
          call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
          unreachable
        end
        local.get 2
        i32.const 1044
        i32.add
        i32.const 0
        i32.store
        local.get 2
        i32.const 1114460
        i32.store offset=1040
        local.get 2
        i64.const 1
        i64.store offset=1028 align=4
        local.get 2
        i32.const 1118920
        i32.store offset=1024
        local.get 2
        i32.const 1024
        i32.add
        i32.const 1118960
        call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
      unreachable
    end
    local.get 1
    local.get 5
    call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
    unreachable)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17hfcf1a19f821d89f9E (type 12) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.get 1
      i32.load offset=8
      local.tee 4
      i32.sub
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
      local.get 1
      i32.load offset=8
      local.set 4
    end
    local.get 1
    i32.load
    local.get 4
    i32.add
    local.get 2
    local.get 3
    call $memcpy
    drop
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 4
    local.get 3
    i32.add
    i32.store offset=8
    local.get 0
    i32.const 4
    i32.store8)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h4180f54b894c6293E (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.const -1
      i32.add
      i32.const 536870911
      i32.and
      local.tee 5
      i32.const 1
      i32.add
      local.tee 4
      i32.const 7
      i32.and
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 7
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          local.get 2
          local.set 5
          br 1 (;@2;)
        end
        local.get 2
        i32.const 60
        i32.add
        local.set 5
        local.get 4
        i32.const 1073741816
        i32.and
        local.set 7
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 5
          i32.load
          local.get 5
          i32.const -8
          i32.add
          i32.load
          local.get 5
          i32.const -16
          i32.add
          i32.load
          local.get 5
          i32.const -24
          i32.add
          i32.load
          local.get 5
          i32.const -32
          i32.add
          i32.load
          local.get 5
          i32.const -40
          i32.add
          i32.load
          local.get 5
          i32.const -48
          i32.add
          i32.load
          local.get 5
          i32.const -56
          i32.add
          i32.load
          local.get 4
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          local.set 4
          local.get 5
          i32.const 64
          i32.add
          local.set 5
          local.get 7
          i32.const -8
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const -60
        i32.add
        local.set 5
      end
      block  ;; label = @2
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 4
        i32.add
        local.set 5
        loop  ;; label = @3
          local.get 5
          i32.load
          local.get 4
          i32.add
          local.set 4
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 6
          i32.const -1
          i32.add
          local.tee 6
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 5
        i32.sub
        local.get 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        local.get 4
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.const 3
      i32.shl
      i32.add
      local.set 3
      local.get 1
      i32.load offset=8
      local.set 5
      loop  ;; label = @2
        local.get 2
        i32.load
        local.set 7
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.get 5
          i32.sub
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          local.get 6
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
          local.get 1
          i32.load offset=8
          local.set 5
        end
        local.get 1
        i32.load
        local.get 5
        i32.add
        local.get 7
        local.get 6
        call $memcpy
        drop
        local.get 1
        local.get 5
        local.get 6
        i32.add
        local.tee 5
        i32.store offset=8
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 4
    i32.store8
    local.get 0
    local.get 4
    i32.store offset=4)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17haae1d573217114a8E (type 5) (param i32) (result i32)
    i32.const 1)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hcfa82c221cadc3fbE (type 12) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.get 1
      i32.load offset=8
      local.tee 4
      i32.sub
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
      local.get 1
      i32.load offset=8
      local.set 4
    end
    local.get 1
    i32.load
    local.get 4
    i32.add
    local.get 2
    local.get 3
    call $memcpy
    drop
    local.get 0
    i32.const 4
    i32.store8
    local.get 1
    local.get 4
    local.get 3
    i32.add
    i32.store offset=8)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17hb445fb2993cb179eE (type 4) (param i32 i32)
    local.get 0
    i32.const 4
    i32.store8)
  (func $_ZN3std2io5Write18write_all_vectored17h74fc3f0f83af1858E (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 4
            i32.add
            local.set 5
            local.get 3
            i32.const 3
            i32.shl
            local.set 6
            local.get 3
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.set 7
            i32.const 0
            local.set 8
            block  ;; label = @5
              loop  ;; label = @6
                local.get 5
                i32.load
                br_if 1 (;@5;)
                local.get 5
                i32.const 8
                i32.add
                local.set 5
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                local.get 6
                i32.const -8
                i32.add
                local.tee 6
                br_if 0 (;@6;)
              end
              local.get 7
              local.set 8
            end
            block  ;; label = @5
              local.get 8
              local.get 3
              i32.le_u
              br_if 0 (;@5;)
              local.get 8
              local.get 3
              i32.const 1116404
              call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
              unreachable
            end
            local.get 3
            local.get 8
            i32.sub
            local.tee 9
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 8
            i32.const 3
            i32.shl
            i32.add
            local.set 10
            i32.const 1116528
            i64.extend_i32_u
            i64.const 32
            i64.shl
            i64.const 2
            i64.or
            local.set 11
            loop  ;; label = @5
              local.get 4
              i32.const 8
              i32.add
              i32.const 2
              local.get 10
              local.get 9
              call $_ZN4wasi13lib_generated8fd_write17h7be21fbc857d7403E
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.load16_u offset=8
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load offset=12
                      local.tee 7
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 10
                      i32.const 4
                      i32.add
                      local.set 5
                      local.get 9
                      i32.const 3
                      i32.shl
                      local.set 2
                      local.get 9
                      i32.const -1
                      i32.add
                      i32.const 536870911
                      i32.and
                      i32.const 1
                      i32.add
                      local.set 12
                      i32.const 0
                      local.set 8
                      i32.const 0
                      local.set 6
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 5
                          i32.load
                          local.get 6
                          i32.add
                          local.tee 3
                          local.get 7
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 5
                          i32.const 8
                          i32.add
                          local.set 5
                          local.get 8
                          i32.const 1
                          i32.add
                          local.set 8
                          local.get 3
                          local.set 6
                          local.get 2
                          i32.const -8
                          i32.add
                          local.tee 2
                          br_if 0 (;@11;)
                        end
                        local.get 3
                        local.set 6
                        local.get 12
                        local.set 8
                      end
                      local.get 9
                      local.get 8
                      i32.lt_u
                      br_if 7 (;@2;)
                      local.get 9
                      local.get 8
                      i32.sub
                      local.set 3
                      local.get 10
                      local.get 8
                      i32.const 3
                      i32.shl
                      local.tee 2
                      i32.add
                      local.set 5
                      local.get 9
                      local.get 8
                      i32.ne
                      br_if 2 (;@7;)
                      local.get 5
                      local.set 10
                      local.get 3
                      local.set 9
                      local.get 7
                      local.get 6
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 4
                      i32.const 28
                      i32.add
                      i32.const 0
                      i32.store
                      local.get 4
                      i32.const 1114460
                      i32.store offset=24
                      local.get 4
                      i64.const 1
                      i64.store offset=12 align=4
                      local.get 4
                      i32.const 1116460
                      i32.store offset=8
                      local.get 4
                      i32.const 8
                      i32.add
                      i32.const 1116468
                      call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
                      unreachable
                    end
                    local.get 4
                    local.get 4
                    i32.load16_u offset=10
                    i32.store16 offset=6
                    local.get 4
                    i32.const 6
                    i32.add
                    call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
                    local.tee 5
                    i32.const 65535
                    i32.and
                    call $_ZN3std3sys4wasi17decode_error_kind17h2104b06d09f796bdE
                    i32.const 255
                    i32.and
                    i32.const 35
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 5
                    i64.extend_i32_u
                    i64.const 65535
                    i64.and
                    i64.const 32
                    i64.shl
                    local.set 11
                  end
                  local.get 0
                  local.get 11
                  i64.store align=4
                  br 4 (;@3;)
                end
                local.get 10
                local.get 2
                i32.add
                local.tee 2
                i32.load offset=4
                local.tee 9
                local.get 7
                local.get 6
                i32.sub
                local.tee 8
                i32.lt_u
                br_if 5 (;@1;)
                local.get 2
                i32.const 4
                i32.add
                local.get 9
                local.get 8
                i32.sub
                i32.store
                local.get 5
                local.get 5
                i32.load
                local.get 8
                i32.add
                i32.store
                local.get 5
                local.set 10
                local.get 3
                local.set 9
              end
              local.get 9
              br_if 0 (;@5;)
            end
          end
          local.get 0
          i32.const 4
          i32.store8
        end
        local.get 4
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 8
      local.get 9
      i32.const 1116404
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 4
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 1114460
    i32.store offset=24
    local.get 4
    i64.const 1
    i64.store offset=12 align=4
    local.get 4
    i32.const 1118588
    i32.store offset=8
    local.get 4
    i32.const 8
    i32.add
    i32.const 1118628
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN3std2io5stdio6stdout17h2bf55076f65c128fE (type 11) (result i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1126084
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17ha9682704f5eadcfcE
    end
    i32.const 1126088)
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17ha9682704f5eadcfcE (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=1126084
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 1126088
      i32.store offset=8
      local.get 0
      local.get 0
      i32.const 24
      i32.add
      i32.store offset=12
      local.get 0
      local.get 0
      i32.const 8
      i32.add
      i32.store offset=20
      i32.const 1126084
      i32.const 1
      local.get 0
      i32.const 20
      i32.add
      i32.const 1116764
      i32.const 1116748
      call $_ZN3std10sys_common4once7generic4Once4call17h34de1d7e09d4fbbfE
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5flush17hff802fbd6c87957aE (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    call $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5flush17h676e97f67a951ce6E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5flush17h676e97f67a951ce6E (type 4) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              i32.load
              local.tee 1
              i32.load
              i32.const 1126168
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.load8_u offset=28
              local.set 3
              local.get 1
              i32.const 1
              i32.store8 offset=28
              local.get 2
              local.get 3
              i32.const 1
              i32.and
              local.tee 3
              i32.store8 offset=7
              local.get 3
              br_if 2 (;@3;)
              local.get 1
              i32.const 1
              i32.store offset=4
              local.get 1
              i32.const 1126168
              i32.store
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.add
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            local.get 3
            i32.store offset=4
          end
          local.get 1
          i32.load offset=8
          br_if 2 (;@1;)
          local.get 1
          i32.const -1
          i32.store offset=8
          local.get 2
          i32.const 8
          i32.add
          local.get 1
          i32.const 12
          i32.add
          call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h0edd742f511a041eE
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load8_u offset=8
              i32.const 4
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 4
              i32.store
              br 1 (;@4;)
            end
            local.get 0
            local.get 2
            i64.load offset=8
            i64.store align=4
          end
          local.get 1
          local.get 1
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 1
          local.get 1
          i32.load offset=4
          i32.const -1
          i32.add
          local.tee 0
          i32.store offset=4
          block  ;; label = @4
            local.get 0
            br_if 0 (;@4;)
            local.get 1
            i32.const 0
            i32.store8 offset=28
            local.get 1
            i32.const 0
            i32.store
          end
          local.get 2
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 2
        i32.const 0
        i32.store offset=28
        local.get 2
        i32.const 1114460
        i32.store offset=24
        local.get 2
        i64.const 1
        i64.store offset=12 align=4
        local.get 2
        i32.const 1118784
        i32.store offset=8
        local.get 2
        i32.const 7
        i32.add
        local.get 2
        i32.const 8
        i32.add
        call $_ZN4core9panicking13assert_failed17h08c93d381fb8d0bcE
        unreachable
      end
      i32.const 1117020
      i32.const 38
      i32.const 1117096
      call $_ZN4core6option13expect_failed17hcf804cb32a829b38E
      unreachable
    end
    i32.const 1114460
    i32.const 16
    local.get 2
    i32.const 8
    i32.add
    i32.const 1114476
    i32.const 1116284
    call $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E
    unreachable)
  (func $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17h80182a0068e61417E (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load
            i32.load
            local.tee 1
            i32.load
            i32.const 1126168
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.load8_u offset=28
            local.set 4
            local.get 1
            i32.const 1
            i32.store8 offset=28
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.tee 4
            i32.store8 offset=8
            local.get 4
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.store offset=4
            local.get 1
            i32.const 1126168
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.add
          local.tee 4
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          local.get 4
          i32.store offset=4
        end
        local.get 3
        local.get 1
        i32.store offset=4
        local.get 3
        i32.const 4
        i32.store8 offset=12
        local.get 3
        local.get 3
        i32.const 4
        i32.add
        i32.store offset=8
        local.get 3
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 2
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        local.get 2
        i64.load align=4
        i64.store offset=24
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 8
            i32.add
            i32.const 1116592
            local.get 3
            i32.const 24
            i32.add
            call $_ZN4core3fmt5write17h5b57237fcc58ee88E
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.load8_u offset=12
              i32.const 4
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 1116580
              i32.store offset=4
              local.get 0
              i32.const 2
              i32.store
              br 2 (;@3;)
            end
            local.get 0
            local.get 3
            i64.load offset=12 align=4
            i64.store align=4
            br 1 (;@3;)
          end
          local.get 0
          i32.const 4
          i32.store8
          local.get 3
          i32.load8_u offset=12
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.get 1
          i32.load offset=4
          i32.load
          call_indirect (type 1)
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 2
            i32.const 4
            i32.add
            i32.load
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.load
            local.get 0
            local.get 2
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 3
          i32.load offset=16
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get 3
        i32.load offset=4
        local.tee 1
        local.get 1
        i32.load offset=4
        i32.const -1
        i32.add
        local.tee 2
        i32.store offset=4
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          i32.store8 offset=28
          local.get 1
          i32.const 0
          i32.store
        end
        local.get 3
        i32.const 48
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 3
      i32.const 0
      i32.store offset=44
      local.get 3
      i32.const 1114460
      i32.store offset=40
      local.get 3
      i64.const 1
      i64.store offset=28 align=4
      local.get 3
      i32.const 1118784
      i32.store offset=24
      local.get 3
      i32.const 8
      i32.add
      local.get 3
      i32.const 24
      i32.add
      call $_ZN4core9panicking13assert_failed17h08c93d381fb8d0bcE
      unreachable
    end
    i32.const 1117020
    i32.const 38
    i32.const 1117096
    call $_ZN4core6option13expect_failed17hcf804cb32a829b38E
    unreachable)
  (func $_ZN3std2io5stdio31print_to_buffer_if_capture_used17h08afc404625e44e2E (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1126080
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1126160
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.store8 offset=1126160
          i32.const 0
          i32.const 0
          i32.store offset=1126164
          br 1 (;@2;)
        end
        i32.const 0
        local.set 2
        i32.const 0
        i32.load offset=1126164
        local.set 3
        i32.const 0
        i32.const 0
        i32.store offset=1126164
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load8_u offset=8
        local.set 4
        i32.const 1
        local.set 2
        local.get 3
        i32.const 1
        i32.store8 offset=8
        local.get 1
        local.get 4
        i32.const 1
        i32.and
        local.tee 4
        i32.store8 offset=8
        local.get 4
        br_if 1 (;@1;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1126148
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
          local.set 2
        end
        local.get 1
        i32.const 4
        i32.store8 offset=12
        local.get 1
        local.get 3
        i32.const 12
        i32.add
        i32.store offset=8
        local.get 1
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 0
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 1
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 0
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 1
        local.get 0
        i64.load align=4
        i64.store offset=24
        local.get 1
        i32.const 8
        i32.add
        i32.const 1116616
        local.get 1
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h5b57237fcc58ee88E
        local.set 0
        local.get 1
        i32.load8_u offset=12
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 255
            i32.and
            i32.const 4
            i32.eq
            br_if 1 (;@3;)
            local.get 1
            i32.load8_u offset=12
            i32.const 3
            i32.ne
            br_if 1 (;@3;)
            local.get 1
            i32.const 16
            i32.add
            i32.load
            local.tee 0
            i32.load
            local.get 0
            i32.load offset=4
            i32.load
            call_indirect (type 1)
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 4
              i32.const 4
              i32.add
              i32.load
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.get 5
              local.get 4
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br 1 (;@3;)
          end
          local.get 4
          i32.const 255
          i32.and
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type 1)
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 4
            i32.const 4
            i32.add
            i32.load
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.get 5
            local.get 4
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 1
          i32.load offset=16
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1126148
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
          br_if 0 (;@3;)
          local.get 3
          i32.const 1
          i32.store8 offset=9
        end
        local.get 3
        i32.const 0
        i32.store8 offset=8
        i32.const 0
        i32.load offset=1126164
        local.set 0
        i32.const 0
        local.get 3
        i32.store offset=1126164
        block  ;; label = @3
          local.get 0
          br_if 0 (;@3;)
          i32.const 1
          local.set 2
          br 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load
        local.tee 3
        i32.const -1
        i32.add
        i32.store
        i32.const 1
        local.set 2
        local.get 3
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h02b3aea1cbfdedf0E
      end
      local.get 1
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 2
      return
    end
    local.get 1
    i32.const 0
    i32.store offset=44
    local.get 1
    i32.const 1114460
    i32.store offset=40
    local.get 1
    i64.const 1
    i64.store offset=28 align=4
    local.get 1
    i32.const 1118784
    i32.store offset=24
    local.get 1
    i32.const 8
    i32.add
    local.get 1
    i32.const 24
    i32.add
    call $_ZN4core9panicking13assert_failed17h08c93d381fb8d0bcE
    unreachable)
  (func $_ZN3std2io5stdio6_print17h1d5ae54016d25589E (type 1) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    local.tee 2
    i64.load align=4
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.tee 3
    i64.load align=4
    i64.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store
    local.get 1
    i32.const 6
    i32.store offset=28
    local.get 1
    i32.const 1116372
    i32.store offset=24
    local.get 1
    i32.const 72
    i32.add
    i32.const 16
    i32.add
    local.get 2
    i64.load align=4
    i64.store
    local.get 1
    i32.const 72
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i64.load align=4
    i64.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store offset=72
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 72
        i32.add
        call $_ZN3std2io5stdio31print_to_buffer_if_capture_used17h08afc404625e44e2E
        br_if 0 (;@2;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1126084
          i32.const 3
          i32.eq
          br_if 0 (;@3;)
          call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17ha9682704f5eadcfcE
        end
        local.get 1
        i32.const 1126088
        i32.store offset=44
        local.get 1
        local.get 1
        i32.const 44
        i32.add
        i32.store offset=56
        local.get 1
        i32.const 72
        i32.add
        i32.const 16
        i32.add
        local.get 1
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 1
        i32.const 72
        i32.add
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 1
        local.get 1
        i64.load
        i64.store offset=72
        local.get 1
        i32.const 32
        i32.add
        local.get 1
        i32.const 56
        i32.add
        local.get 1
        i32.const 72
        i32.add
        call $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17h80182a0068e61417E
        local.get 1
        i32.load8_u offset=32
        i32.const 4
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 96
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    local.get 1
    i64.load offset=32
    i64.store offset=48
    local.get 1
    i32.const 92
    i32.add
    i32.const 2
    i32.store
    local.get 1
    i32.const 68
    i32.add
    i32.const 15
    i32.store
    local.get 1
    i64.const 2
    i64.store offset=76 align=4
    local.get 1
    i32.const 1116340
    i32.store offset=72
    local.get 1
    i32.const 14
    i32.store offset=60
    local.get 1
    local.get 1
    i32.const 56
    i32.add
    i32.store offset=88
    local.get 1
    local.get 1
    i32.const 48
    i32.add
    i32.store offset=64
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store offset=56
    local.get 1
    i32.const 72
    i32.add
    i32.const 1116356
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN3std2io5Write9write_all17h9162cb4d05a6f809E (type 12) (param i32 i32 i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1116528
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.const 2
        i64.or
        local.set 5
        loop  ;; label = @3
          local.get 4
          local.get 3
          i32.store offset=12
          local.get 4
          local.get 2
          i32.store offset=8
          local.get 4
          i32.const 16
          i32.add
          i32.const 2
          local.get 4
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN4wasi13lib_generated8fd_write17h7be21fbc857d7403E
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load16_u offset=16
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load offset=20
                  local.tee 6
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 3
                  local.get 6
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 3
                  local.get 6
                  i32.sub
                  local.set 3
                  local.get 2
                  local.get 6
                  i32.add
                  local.set 2
                  br 3 (;@4;)
                end
                local.get 4
                local.get 4
                i32.load16_u offset=18
                i32.store16 offset=30
                local.get 4
                i32.const 30
                i32.add
                call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
                local.tee 6
                i32.const 65535
                i32.and
                call $_ZN3std3sys4wasi17decode_error_kind17h2104b06d09f796bdE
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 2 (;@4;)
                local.get 6
                i64.extend_i32_u
                i64.const 65535
                i64.and
                i64.const 32
                i64.shl
                local.set 5
              end
              local.get 0
              local.get 5
              i64.store align=4
              br 4 (;@1;)
            end
            local.get 6
            local.get 3
            i32.const 1116484
            call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
            unreachable
          end
          local.get 3
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const 4
      i32.store8
    end
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2io5Write18write_all_vectored17he4c59140217b70bcE (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 4
            i32.add
            local.set 5
            local.get 3
            i32.const 3
            i32.shl
            local.set 6
            local.get 3
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.set 7
            i32.const 0
            local.set 8
            block  ;; label = @5
              loop  ;; label = @6
                local.get 5
                i32.load
                br_if 1 (;@5;)
                local.get 5
                i32.const 8
                i32.add
                local.set 5
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                local.get 6
                i32.const -8
                i32.add
                local.tee 6
                br_if 0 (;@6;)
              end
              local.get 7
              local.set 8
            end
            block  ;; label = @5
              local.get 8
              local.get 3
              i32.le_u
              br_if 0 (;@5;)
              local.get 8
              local.get 3
              i32.const 1116404
              call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
              unreachable
            end
            local.get 3
            local.get 8
            i32.sub
            local.tee 9
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 8
            i32.const 3
            i32.shl
            i32.add
            local.set 10
            local.get 1
            i32.const 4
            i32.add
            local.set 7
            loop  ;; label = @5
              local.get 9
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              local.tee 6
              i32.const 1
              i32.add
              local.tee 11
              i32.const 7
              i32.and
              local.set 8
              i32.const 0
              local.set 3
              local.get 10
              local.set 5
              block  ;; label = @6
                local.get 6
                i32.const 7
                i32.lt_u
                br_if 0 (;@6;)
                local.get 10
                i32.const 60
                i32.add
                local.set 5
                local.get 11
                i32.const 1073741816
                i32.and
                local.set 6
                i32.const 0
                local.set 3
                loop  ;; label = @7
                  local.get 5
                  i32.load
                  local.get 5
                  i32.const -8
                  i32.add
                  i32.load
                  local.get 5
                  i32.const -16
                  i32.add
                  i32.load
                  local.get 5
                  i32.const -24
                  i32.add
                  i32.load
                  local.get 5
                  i32.const -32
                  i32.add
                  i32.load
                  local.get 5
                  i32.const -40
                  i32.add
                  i32.load
                  local.get 5
                  i32.const -48
                  i32.add
                  i32.load
                  local.get 5
                  i32.const -56
                  i32.add
                  i32.load
                  local.get 3
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  local.set 3
                  local.get 5
                  i32.const 64
                  i32.add
                  local.set 5
                  local.get 6
                  i32.const -8
                  i32.add
                  local.tee 6
                  br_if 0 (;@7;)
                end
                local.get 5
                i32.const -60
                i32.add
                local.set 5
              end
              block  ;; label = @6
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.const 4
                i32.add
                local.set 5
                loop  ;; label = @7
                  local.get 5
                  i32.load
                  local.get 3
                  i32.add
                  local.set 3
                  local.get 5
                  i32.const 8
                  i32.add
                  local.set 5
                  local.get 8
                  i32.const -1
                  i32.add
                  local.tee 8
                  br_if 0 (;@7;)
                end
              end
              local.get 9
              i32.const 3
              i32.shl
              local.set 12
              block  ;; label = @6
                local.get 7
                i32.load
                local.get 1
                i32.load offset=8
                local.tee 5
                i32.sub
                local.get 3
                i32.ge_u
                br_if 0 (;@6;)
                local.get 1
                local.get 5
                local.get 3
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
                local.get 1
                i32.load offset=8
                local.set 5
              end
              local.get 10
              local.get 12
              i32.add
              local.set 13
              local.get 10
              local.set 8
              loop  ;; label = @6
                local.get 8
                i32.load
                local.set 2
                block  ;; label = @7
                  local.get 7
                  i32.load
                  local.get 5
                  i32.sub
                  local.get 8
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 6
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 5
                  local.get 6
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
                  local.get 1
                  i32.load offset=8
                  local.set 5
                end
                local.get 1
                i32.load
                local.get 5
                i32.add
                local.get 2
                local.get 6
                call $memcpy
                drop
                local.get 1
                local.get 5
                local.get 6
                i32.add
                local.tee 5
                i32.store offset=8
                local.get 8
                i32.const 8
                i32.add
                local.tee 8
                local.get 13
                i32.ne
                br_if 0 (;@6;)
              end
              block  ;; label = @6
                local.get 3
                br_if 0 (;@6;)
                local.get 0
                i32.const 1116528
                i64.extend_i32_u
                i64.const 32
                i64.shl
                i64.const 2
                i64.or
                i64.store align=4
                br 3 (;@3;)
              end
              local.get 10
              i32.const 4
              i32.add
              local.set 5
              i32.const 0
              local.set 8
              i32.const 0
              local.set 6
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 5
                  i32.load
                  local.get 6
                  i32.add
                  local.tee 2
                  local.get 3
                  i32.gt_u
                  br_if 1 (;@6;)
                  local.get 5
                  i32.const 8
                  i32.add
                  local.set 5
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 2
                  local.set 6
                  local.get 12
                  i32.const -8
                  i32.add
                  local.tee 12
                  br_if 0 (;@7;)
                end
                local.get 2
                local.set 6
                local.get 11
                local.set 8
              end
              local.get 9
              local.get 8
              i32.lt_u
              br_if 3 (;@2;)
              local.get 10
              local.get 8
              i32.const 3
              i32.shl
              local.tee 2
              i32.add
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 9
                  local.get 8
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 6
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 4
                  i32.const 28
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 4
                  i32.const 1114460
                  i32.store offset=24
                  local.get 4
                  i64.const 1
                  i64.store offset=12 align=4
                  local.get 4
                  i32.const 1116460
                  i32.store offset=8
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.const 1116468
                  call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
                  unreachable
                end
                local.get 10
                local.get 2
                i32.add
                local.tee 2
                i32.load offset=4
                local.tee 13
                local.get 3
                local.get 6
                i32.sub
                local.tee 6
                i32.lt_u
                br_if 5 (;@1;)
                local.get 2
                i32.const 4
                i32.add
                local.get 13
                local.get 6
                i32.sub
                i32.store
                local.get 5
                local.get 5
                i32.load
                local.get 6
                i32.add
                i32.store
              end
              local.get 5
              local.set 10
              local.get 9
              local.get 8
              i32.sub
              local.tee 9
              br_if 0 (;@5;)
            end
          end
          local.get 0
          i32.const 4
          i32.store8
        end
        local.get 4
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 8
      local.get 9
      i32.const 1116404
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 4
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 1114460
    i32.store offset=24
    local.get 4
    i64.const 1
    i64.store offset=12 align=4
    local.get 4
    i32.const 1118588
    i32.store offset=8
    local.get 4
    i32.const 8
    i32.add
    i32.const 1118628
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN3std2io5Write9write_fmt17h7d0148cd13ccbf72E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.store8 offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 8
        i32.add
        i32.const 1116616
        local.get 3
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h5b57237fcc58ee88E
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=12
          i32.const 4
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 1116580
          i32.store offset=4
          local.get 0
          i32.const 2
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        i64.load offset=12 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.store8
      local.get 3
      i32.load8_u offset=12
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load
      local.tee 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 1
        local.get 0
        i32.const 8
        i32.add
        i32.load
        call $__rust_dealloc
      end
      local.get 3
      i32.load offset=16
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha7b28a13338cc7aeE (type 7) (param i32 i32 i32) (result i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17hf5777b820d3088c8E
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=8
      local.tee 2
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      i64.load offset=8
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 5
          i32.const 4
          i32.add
          i32.load
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load
          local.get 6
          local.get 5
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 1
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i64.store offset=4 align=4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.ne)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17had73adffe4c411e2E (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 4
      i32.add
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17hc701557ed0141f0cE
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 0
    i32.load
    local.get 3
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN3std5panic19get_backtrace_style17h290f12c8812679e4E (type 11) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1126120
              br_table 3 (;@2;) 4 (;@1;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 1114603
            i32.const 40
            i32.const 1116664
            call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
            unreachable
          end
          i32.const 1
          local.set 1
          br 2 (;@1;)
        end
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1115172
      i32.const 14
      call $_ZN3std3env7_var_os17h558b5fef9fa42fecE
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          local.get 0
          i32.load offset=4
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=8
                i32.const -1
                i32.add
                br_table 0 (;@6;) 2 (;@4;) 2 (;@4;) 1 (;@5;) 2 (;@4;)
              end
              i32.const -2
              i32.const 0
              local.get 1
              i32.load8_u
              i32.const 48
              i32.eq
              select
              local.set 2
              br 1 (;@4;)
            end
            local.get 1
            i32.const 1116680
            i32.const 4
            call $memcmp
            i32.eqz
            local.set 2
          end
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            i32.const 1
            call $__rust_dealloc
          end
          i32.const 1
          local.set 3
          i32.const 0
          local.set 1
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.and
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          i32.const 2
          local.set 3
          i32.const 1
          local.set 1
          br 1 (;@2;)
        end
        i32.const 3
        local.set 3
        i32.const 2
        local.set 1
      end
      i32.const 0
      local.get 3
      i32.store offset=1126120
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std7process5abort17h103768cd99c928baE (type 0)
    call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
    unreachable)
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17he8fe2cef33927c4dE (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=1126084
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 1126088
      i32.store offset=12
      local.get 1
      local.get 0
      i32.store offset=8
      local.get 1
      local.get 1
      i32.const 24
      i32.add
      i32.store offset=16
      local.get 1
      local.get 1
      i32.const 8
      i32.add
      i32.store offset=20
      i32.const 1126084
      i32.const 1
      local.get 1
      i32.const 20
      i32.add
      i32.const 1116784
      i32.const 1116748
      call $_ZN3std10sys_common4once7generic4Once4call17h34de1d7e09d4fbbfE
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h15c657531af9ec1cE (type 4) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.set 2
    local.get 0
    i32.const 0
    i32.store
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 1114560
      i32.const 43
      i32.const 1116804
      call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.set 0
    local.get 2
    i32.const 1
    i32.store8
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    i64.const 4294967296
    i64.store offset=8 align=4
    local.get 0
    i64.const 0
    i64.store align=4
    local.get 0
    i32.const 24
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 0
    i32.store8 offset=28)
  (func $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h40ae03ec43848d19E (type 4) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 2
    i32.load
    local.set 0
    local.get 2
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1024
        i32.const 1
        call $__rust_alloc
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store8 offset=28
        local.get 0
        i32.const 0
        i32.store8 offset=24
        local.get 0
        i64.const 1024
        i64.store offset=16 align=4
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        i64.const 0
        i64.store align=4
        return
      end
      i32.const 1114560
      i32.const 43
      i32.const 1116804
      call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
      unreachable
    end
    i32.const 1024
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
    unreachable)
  (func $_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h19905f4a7f52a80bE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.const 1116820
    i32.const 11
    call $_ZN4core3fmt9Formatter12debug_struct17h9858016b6343d693E
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17he3f0e150ca880f7bE
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std10sys_common9backtrace5print17h76126a79f542a0d9E (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const 0
    i32.load8_u offset=1126124
    local.set 5
    i32.const 1
    local.set 6
    i32.const 0
    i32.const 1
    i32.store8 offset=1126124
    local.get 4
    local.get 5
    i32.store8 offset=32
    block  ;; label = @1
      local.get 5
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 0
        i32.load offset=1126148
        i32.const 2147483647
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
        local.set 6
      end
      local.get 2
      i32.const 36
      i32.add
      i32.load
      local.set 5
      local.get 4
      i32.const 28
      i32.add
      i32.const 1
      i32.store
      local.get 4
      i64.const 1
      i64.store offset=12 align=4
      local.get 4
      i32.const 1115288
      i32.store offset=8
      local.get 4
      i32.const 16
      i32.store offset=36
      local.get 4
      local.get 3
      i32.store8 offset=47
      local.get 4
      local.get 4
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 4
      local.get 4
      i32.const 47
      i32.add
      i32.store offset=32
      local.get 0
      local.get 1
      local.get 4
      i32.const 8
      i32.add
      local.get 5
      call_indirect (type 6)
      block  ;; label = @2
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1126148
        i32.const 2147483647
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        call $_ZN3std9panicking11panic_count17is_zero_slow_path17h8dfe95873ee64d34E
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=1126125
      end
      i32.const 0
      i32.const 0
      i32.store8 offset=1126124
      local.get 4
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 4
    i32.const 0
    i32.store offset=28
    local.get 4
    i32.const 1114460
    i32.store offset=24
    local.get 4
    i64.const 1
    i64.store offset=12 align=4
    local.get 4
    i32.const 1118784
    i32.store offset=8
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.const 8
    i32.add
    call $_ZN4core9panicking13assert_failed17h08c93d381fb8d0bcE
    unreachable)
  (func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17hfaf23ea82406e706E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN3std3env11current_dir17h64d71e4e47161586E
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=12
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.load8_u offset=12
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load
      local.tee 4
      i32.load
      local.get 4
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        local.tee 5
        i32.const 4
        i32.add
        i32.load
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load
        local.get 6
        local.get 5
        i32.const 8
        i32.add
        i32.load
        call $__rust_dealloc
      end
      local.get 4
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 2
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 1114460
    i32.store offset=24
    local.get 2
    i64.const 1
    i64.store offset=12 align=4
    local.get 2
    i32.const 1116916
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17hc01d3a4540d781feE
            br_if 0 (;@4;)
            local.get 3
            i32.const 255
            i32.and
            br_if 1 (;@3;)
            local.get 2
            i32.const 28
            i32.add
            i32.const 0
            i32.store
            local.get 2
            i32.const 1114460
            i32.store offset=24
            local.get 2
            i64.const 1
            i64.store offset=12 align=4
            local.get 2
            i32.const 1117012
            i32.store offset=8
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17hc01d3a4540d781feE
            i32.eqz
            br_if 1 (;@3;)
          end
          i32.const 1
          local.set 1
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 4
          i32.eqz
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        i32.const 0
        local.set 1
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 4
      i32.const 1
      call $__rust_dealloc
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hc30cefb5d7b41cb2E (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store
    local.get 1
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h6f97f3f0d612aaffE
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h6f97f3f0d612aaffE (type 1) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 2
    i32.const 20
    i32.add
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
          end
          local.get 3
          br_if 2 (;@1;)
          i32.const 1114460
          local.set 2
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 3
        br_if 1 (;@1;)
        local.get 2
        i32.load
        local.tee 2
        i32.load offset=4
        local.set 3
        local.get 2
        i32.load
        local.set 2
      end
      local.get 1
      local.get 3
      i32.store offset=4
      local.get 1
      local.get 2
      i32.store
      local.get 1
      i32.const 1117708
      local.get 0
      i32.load offset=4
      local.tee 2
      call $_ZN4core5panic10panic_info9PanicInfo7message17hdd1e78e1f1cb73f3E
      local.get 0
      i32.load offset=8
      local.get 2
      call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h9b064ccfe94cb169E
      call $_ZN3std9panicking20rust_panic_with_hook17h5367e4b56cc7b30eE
      unreachable
    end
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store
    local.get 1
    i32.const 1117688
    local.get 0
    i32.load offset=4
    local.tee 2
    call $_ZN4core5panic10panic_info9PanicInfo7message17hdd1e78e1f1cb73f3E
    local.get 0
    i32.load offset=8
    local.get 2
    call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h9b064ccfe94cb169E
    call $_ZN3std9panicking20rust_panic_with_hook17h5367e4b56cc7b30eE
    unreachable)
  (func $_ZN3std5alloc24default_alloc_error_hook17h0598f644ec239377E (type 4) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1126072
      br_if 0 (;@1;)
      local.get 2
      i32.const 17
      i32.store offset=4
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 2
      i32.const 12
      i32.add
      i32.store
      local.get 2
      i32.const 4
      i32.store8 offset=20
      local.get 2
      local.get 2
      i32.const 56
      i32.add
      i32.store offset=16
      local.get 2
      i32.const 1
      i32.store offset=52
      local.get 2
      i64.const 2
      i64.store offset=36 align=4
      local.get 2
      i32.const 1117272
      i32.store offset=32
      local.get 2
      local.get 2
      i32.store offset=48
      local.get 2
      i32.const 16
      i32.add
      i32.const 1116540
      local.get 2
      i32.const 32
      i32.add
      call $_ZN4core3fmt5write17h5b57237fcc58ee88E
      local.set 0
      local.get 2
      i32.load8_u offset=20
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 255
          i32.and
          i32.const 4
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.load8_u offset=20
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          local.get 2
          i32.const 24
          i32.add
          i32.load
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type 1)
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 3
            i32.const 4
            i32.add
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.get 4
            local.get 3
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 0
          i32.const 12
          i32.const 4
          call $__rust_dealloc
          br 1 (;@2;)
        end
        local.get 3
        i32.const 255
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.const 4
          i32.add
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.get 4
          local.get 3
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 2
        i32.load offset=24
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 2
      i32.const 64
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 52
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=36 align=4
    local.get 2
    i32.const 1117272
    i32.store offset=32
    local.get 2
    i32.const 17
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.store offset=16
    local.get 2
    i32.const 32
    i32.add
    i32.const 1117312
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $__rdl_alloc (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.le_u
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 0
      call $aligned_alloc
      return
    end
    local.get 0
    call $malloc)
  (func $__rdl_dealloc (type 6) (param i32 i32 i32)
    local.get 0
    call $free)
  (func $__rdl_realloc (type 9) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 8
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.le_u
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        local.get 3
        call $aligned_alloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      local.get 1
      local.get 3
      local.get 1
      local.get 3
      i32.lt_u
      select
      call $memcpy
      local.set 3
      local.get 0
      call $free
      local.get 3
      return
    end
    local.get 0
    local.get 3
    call $realloc)
  (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h51be37ad16cff75dE (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 16
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get 3
    i32.const 40
    i32.add
    i32.const 20
    i32.add
    i32.const 18
    i32.store
    local.get 3
    i32.const 52
    i32.add
    i32.const 14
    i32.store
    local.get 3
    i64.const 4
    i64.store offset=20 align=4
    local.get 3
    i32.const 1117504
    i32.store offset=16
    local.get 3
    i32.const 14
    i32.store offset=44
    local.get 3
    local.get 0
    i32.load offset=8
    i32.store offset=56
    local.get 3
    local.get 0
    i32.load offset=4
    i32.store offset=48
    local.get 3
    local.get 0
    i32.load
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.load offset=36
    local.tee 4
    call_indirect (type 6)
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=8
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.tee 5
      i32.load
      local.get 5
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 5
        i32.load offset=4
        local.tee 6
        i32.const 4
        i32.add
        i32.load
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load
        local.get 7
        local.get 6
        i32.const 8
        i32.add
        i32.load
        call $__rust_dealloc
      end
      local.get 5
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      i32.load8_u
      local.tee 0
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 3
          i32.const 40
          i32.add
          local.get 1
          local.get 2
          i32.const 0
          call $_ZN3std10sys_common9backtrace5print17h76126a79f542a0d9E
          local.get 3
          i32.load8_u offset=40
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
          local.get 3
          i32.load offset=44
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type 1)
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 1
            i32.const 4
            i32.add
            i32.load
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.get 2
            local.get 1
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 0
          i32.const 12
          i32.const 4
          call $__rust_dealloc
          br 2 (;@1;)
        end
        local.get 3
        i32.const 40
        i32.add
        local.get 1
        local.get 2
        i32.const 1
        call $_ZN3std10sys_common9backtrace5print17h76126a79f542a0d9E
        local.get 3
        i32.load8_u offset=40
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=44
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        i32.load
        call_indirect (type 1)
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.get 2
          local.get 1
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 0
        i32.const 12
        i32.const 4
        call $__rust_dealloc
        br 1 (;@1;)
      end
      i32.const 0
      i32.load8_u offset=1126060
      local.set 0
      i32.const 0
      i32.const 0
      i32.store8 offset=1126060
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 60
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 1114460
      i32.store offset=56
      local.get 3
      i64.const 1
      i64.store offset=44 align=4
      local.get 3
      i32.const 1117616
      i32.store offset=40
      local.get 3
      i32.const 16
      i32.add
      local.get 1
      local.get 3
      i32.const 40
      i32.add
      local.get 4
      call_indirect (type 6)
      local.get 3
      i32.load8_u offset=16
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=20
      local.tee 0
      i32.load
      local.get 0
      i32.load offset=4
      i32.load
      call_indirect (type 1)
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.get 2
        local.get 1
        i32.const 8
        i32.add
        i32.load
        call $__rust_dealloc
      end
      local.get 0
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $rust_begin_unwind (type 1) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call $_ZN4core5panic10panic_info9PanicInfo8location17h0f08f4a013e2f428E
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call $_ZN4core5panic10panic_info9PanicInfo7message17hdd1e78e1f1cb73f3E
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=4
        local.get 1
        local.get 3
        i32.store
        local.get 1
        call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17hc30cefb5d7b41cb2E
        unreachable
      end
      i32.const 1114560
      i32.const 43
      i32.const 1117640
      call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
      unreachable
    end
    i32.const 1114560
    i32.const 43
    i32.const 1117624
    call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h7719b4ae021628e0E (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 5
      i32.const 0
      i32.store
      local.get 2
      i64.const 1
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1114364
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h5b57237fcc58ee88E
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 5
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 2
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.tee 4
    local.get 3
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    i32.const 12
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.load align=4
    local.set 6
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    local.get 2
    local.get 6
    i64.store offset=24
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
      unreachable
    end
    local.get 1
    local.get 2
    i64.load offset=24
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 4
    i32.load
    i32.store
    local.get 0
    i32.const 1117656
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h07a26fc78afcb535E (type 4) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 1
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 1
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1114364
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h5b57237fcc58ee88E
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 0
    i32.const 1117656
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hf90dfb84ee05582aE (type 4) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      i32.const 8
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 8
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1117672
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h6bd516ec9ca5481cE (type 4) (param i32 i32)
    local.get 0
    i32.const 1117672
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN3std9panicking20rust_panic_with_hook17h5367e4b56cc7b30eE (type 13) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 0
    i32.const 0
    i32.load offset=1126148
    local.tee 6
    i32.const 1
    i32.add
    i32.store offset=1126148
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const -1
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 2147483647
                    i32.and
                    i32.const 2
                    i32.gt_u
                    br_if 2 (;@6;)
                    local.get 5
                    local.get 4
                    i32.store8 offset=64
                    local.get 5
                    local.get 3
                    i32.store offset=60
                    local.get 5
                    local.get 2
                    i32.store offset=56
                    local.get 5
                    i32.const 1117788
                    i32.store offset=52
                    local.get 5
                    i32.const 1114460
                    i32.store offset=48
                    local.get 5
                    i32.const 19
                    i32.store offset=76
                    local.get 5
                    local.get 5
                    i32.const 48
                    i32.add
                    i32.store offset=72
                    local.get 5
                    i32.const 4
                    i32.store8 offset=20
                    local.get 5
                    local.get 5
                    i32.const 104
                    i32.add
                    i32.store offset=16
                    local.get 5
                    i32.const 1
                    i32.store offset=100
                    local.get 5
                    i64.const 2
                    i64.store offset=84 align=4
                    local.get 5
                    i32.const 1117856
                    i32.store offset=80
                    local.get 5
                    local.get 5
                    i32.const 72
                    i32.add
                    i32.store offset=96
                    local.get 5
                    i32.const 16
                    i32.add
                    i32.const 1116540
                    local.get 5
                    i32.const 80
                    i32.add
                    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
                    local.set 6
                    local.get 5
                    i32.load8_u offset=20
                    local.set 4
                    local.get 6
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const 255
                    i32.and
                    i32.const 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 5
                    i32.load8_u offset=20
                    i32.const 3
                    i32.ne
                    br_if 3 (;@5;)
                    local.get 5
                    i32.const 24
                    i32.add
                    i32.load
                    local.tee 5
                    i32.load
                    local.get 5
                    i32.load offset=4
                    i32.load
                    call_indirect (type 1)
                    block  ;; label = @9
                      local.get 5
                      i32.load offset=4
                      local.tee 6
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      i32.load
                      local.get 4
                      local.get 6
                      i32.const 8
                      i32.add
                      i32.load
                      call $__rust_dealloc
                    end
                    local.get 5
                    i32.const 12
                    i32.const 4
                    call $__rust_dealloc
                    call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
                    unreachable
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1126180
                  i32.const 1
                  i32.add
                  local.tee 6
                  i32.store offset=1126180
                  local.get 6
                  i32.const 2
                  i32.gt_u
                  br_if 1 (;@6;)
                  local.get 5
                  local.get 4
                  i32.store8 offset=32
                  local.get 5
                  local.get 3
                  i32.store offset=28
                  local.get 5
                  local.get 2
                  i32.store offset=24
                  local.get 5
                  i32.const 1117788
                  i32.store offset=20
                  local.get 5
                  i32.const 1114460
                  i32.store offset=16
                  i32.const 0
                  i32.load offset=1126132
                  local.tee 3
                  i32.const -1
                  i32.le_s
                  br_if 5 (;@2;)
                  i32.const 0
                  local.get 3
                  i32.const 1
                  i32.add
                  i32.store offset=1126132
                  i32.const 0
                  i32.load offset=1126140
                  local.set 3
                  local.get 5
                  i32.const 8
                  i32.add
                  local.get 0
                  local.get 1
                  i32.load offset=16
                  call_indirect (type 4)
                  local.get 5
                  local.get 5
                  i64.load offset=8
                  i64.store offset=16
                  local.get 3
                  br_if 3 (;@4;)
                  local.get 5
                  i32.const 16
                  i32.add
                  call $_ZN3std9panicking12default_hook17h735c059e19fa21edE
                  br 4 (;@3;)
                end
                local.get 4
                i32.const 255
                i32.and
                i32.const 3
                i32.ne
                br_if 1 (;@5;)
                local.get 5
                i32.const 16
                i32.add
                i32.const 8
                i32.add
                i32.load
                local.tee 6
                i32.load
                local.get 6
                i32.load offset=4
                i32.load
                call_indirect (type 1)
                block  ;; label = @7
                  local.get 6
                  i32.load offset=4
                  local.tee 4
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 3
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load
                  local.get 3
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.load
                  call $__rust_dealloc
                end
                local.get 5
                i32.load offset=24
                i32.const 12
                i32.const 4
                call $__rust_dealloc
                call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
                unreachable
              end
              local.get 5
              i32.const 4
              i32.store8 offset=52
              local.get 5
              local.get 5
              i32.const 104
              i32.add
              i32.store offset=48
              local.get 5
              i32.const 0
              i32.store offset=100
              local.get 5
              i32.const 1114460
              i32.store offset=96
              local.get 5
              i64.const 1
              i64.store offset=84 align=4
              local.get 5
              i32.const 1117780
              i32.store offset=80
              local.get 5
              i32.const 48
              i32.add
              i32.const 1116540
              local.get 5
              i32.const 80
              i32.add
              call $_ZN4core3fmt5write17h5b57237fcc58ee88E
              local.set 6
              local.get 5
              i32.load8_u offset=52
              local.set 4
              block  ;; label = @6
                local.get 6
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.const 255
                i32.and
                i32.const 4
                i32.eq
                br_if 1 (;@5;)
                local.get 5
                i32.load8_u offset=52
                i32.const 3
                i32.ne
                br_if 1 (;@5;)
                local.get 5
                i32.const 56
                i32.add
                i32.load
                local.tee 5
                i32.load
                local.get 5
                i32.load offset=4
                i32.load
                call_indirect (type 1)
                block  ;; label = @7
                  local.get 5
                  i32.load offset=4
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.load
                  local.get 4
                  local.get 6
                  i32.const 8
                  i32.add
                  i32.load
                  call $__rust_dealloc
                end
                local.get 5
                i32.const 12
                i32.const 4
                call $__rust_dealloc
                call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
                unreachable
              end
              local.get 4
              i32.const 255
              i32.and
              i32.const 3
              i32.ne
              br_if 0 (;@5;)
              local.get 5
              i32.const 48
              i32.add
              i32.const 8
              i32.add
              i32.load
              local.tee 6
              i32.load
              local.get 6
              i32.load offset=4
              i32.load
              call_indirect (type 1)
              block  ;; label = @6
                local.get 6
                i32.load offset=4
                local.tee 4
                i32.const 4
                i32.add
                i32.load
                local.tee 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load
                local.get 3
                local.get 4
                i32.const 8
                i32.add
                i32.load
                call $__rust_dealloc
              end
              local.get 5
              i32.load offset=56
              i32.const 12
              i32.const 4
              call $__rust_dealloc
            end
            call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
            unreachable
          end
          i32.const 0
          i32.load offset=1126140
          local.get 5
          i32.const 16
          i32.add
          i32.const 0
          i32.load offset=1126144
          i32.load offset=20
          call_indirect (type 4)
        end
        i32.const 0
        i32.const 0
        i32.load offset=1126132
        i32.const -1
        i32.add
        i32.store offset=1126132
        block  ;; label = @3
          local.get 6
          i32.const 1
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          br_if 2 (;@1;)
        end
        local.get 5
        i32.const 100
        i32.add
        i32.const 0
        i32.store
        local.get 5
        i32.const 1114460
        i32.store offset=96
        local.get 5
        i64.const 1
        i64.store offset=84 align=4
        local.get 5
        i32.const 1117916
        i32.store offset=80
        local.get 5
        i32.const 48
        i32.add
        local.get 5
        i32.const 104
        i32.add
        local.get 5
        i32.const 80
        i32.add
        call $_ZN3std2io5Write9write_fmt17h64829f9327d5207bE
        local.get 5
        i32.const 48
        i32.add
        call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h7b28bbb2e671bb66E
        call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
        unreachable
      end
      local.get 5
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 5
      i32.const 80
      i32.add
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      local.get 5
      i64.const 2
      i64.store offset=52 align=4
      local.get 5
      i32.const 1114848
      i32.store offset=48
      local.get 5
      i32.const 10
      i32.store offset=76
      local.get 5
      i32.const 1114460
      i32.store offset=96
      local.get 5
      i64.const 1
      i64.store offset=84 align=4
      local.get 5
      i32.const 1118892
      i32.store offset=80
      local.get 5
      local.get 5
      i32.const 72
      i32.add
      i32.store offset=64
      local.get 5
      local.get 5
      i32.const 80
      i32.add
      i32.store offset=72
      local.get 5
      i32.const 40
      i32.add
      local.get 5
      i32.const 104
      i32.add
      local.get 5
      i32.const 48
      i32.add
      call $_ZN3std2io5Write9write_fmt17h64829f9327d5207bE
      local.get 5
      i32.const 40
      i32.add
      call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h7b28bbb2e671bb66E
      call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
      unreachable
    end
    local.get 0
    local.get 1
    call $rust_panic
    unreachable)
  (func $rust_panic (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 2
    call $__rust_start_panic
    i32.store offset=12
    local.get 2
    i32.const 24
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i32.const 56
    i32.add
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=28 align=4
    local.get 2
    i32.const 1114848
    i32.store offset=24
    local.get 2
    i32.const 10
    i32.store offset=52
    local.get 2
    i64.const 1
    i64.store offset=60 align=4
    local.get 2
    i32.const 1117956
    i32.store offset=56
    local.get 2
    i32.const 17
    i32.store offset=84
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 80
    i32.add
    i32.store offset=72
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.store offset=80
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 88
    i32.add
    local.get 2
    i32.const 24
    i32.add
    call $_ZN3std2io5Write9write_fmt17h64829f9327d5207bE
    local.get 2
    i32.const 16
    i32.add
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h7b28bbb2e671bb66E
    call $_ZN3std3sys4wasi14abort_internal17h8815ce268c365faeE
    unreachable)
  (func $_ZN3std3sys4wasi7process8ExitCode6as_i3217hd3a494473b858659E (type 5) (param i32) (result i32)
    local.get 0
    i32.load8_u)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h96425111afa21263E (type 12) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store offset=8
    local.get 4
    i32.const 16
    i32.add
    i32.const 2
    local.get 4
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN4wasi13lib_generated8fd_write17h7be21fbc857d7403E
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load16_u offset=16
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.load offset=20
        i32.store offset=4
        local.get 0
        i32.const 4
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load16_u offset=18
      i32.store16 offset=30
      local.get 0
      local.get 4
      i32.const 30
      i32.add
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i64.extend_i32_u
      i64.const 65535
      i64.and
      i64.const 32
      i64.shl
      i64.store align=4
    end
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h4f122ecbe6b98e37E (type 12) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 2
    local.get 2
    local.get 3
    call $_ZN4wasi13lib_generated8fd_write17h7be21fbc857d7403E
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load16_u
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.load offset=4
        i32.store offset=4
        local.get 0
        i32.const 4
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load16_u offset=2
      i32.store16 offset=14
      local.get 0
      local.get 4
      i32.const 14
      i32.add
      call $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE
      i64.extend_i32_u
      i64.const 65535
      i64.and
      i64.const 32
      i64.shl
      i64.store align=4
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h34fa90f555cdec33E (type 5) (param i32) (result i32)
    i32.const 1)
  (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17h17e8fc23fd4cea09E (type 4) (param i32 i32)
    local.get 0
    i32.const 4
    i32.store8)
  (func $_ZN3std5alloc8rust_oom17h84f549c8d2b0dc34E (type 4) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1126128
    local.tee 2
    i32.const 20
    local.get 2
    select
    call_indirect (type 4)
    call $_ZN3std7process5abort17h103768cd99c928baE
    unreachable)
  (func $__rg_oom (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN3std5alloc8rust_oom17h84f549c8d2b0dc34E
    unreachable)
  (func $__rust_start_panic (type 5) (param i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN4wasi13lib_generated5Errno3raw17h7fa730e75da8139aE (type 5) (param i32) (result i32)
    local.get 0
    i32.load16_u)
  (func $_ZN4wasi13lib_generated8fd_write17h7be21fbc857d7403E (type 12) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        i32.const 12
        i32.add
        call $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17hdcb202a40cb61d99E
        local.tee 3
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.load offset=12
        i32.store offset=4
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.store16 offset=2
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store16
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $malloc (type 5) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=1126208
      br_if 0 (;@1;)
      i32.const 0
      call $sbrk
      i32.const 1126720
      i32.sub
      local.tee 2
      i32.const 89
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      block  ;; label = @2
        i32.const 0
        i32.load offset=1126656
        local.tee 4
        br_if 0 (;@2;)
        i32.const 0
        i64.const -1
        i64.store offset=1126668 align=4
        i32.const 0
        i64.const 281474976776192
        i64.store offset=1126660 align=4
        i32.const 0
        local.get 1
        i32.const 8
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        local.tee 4
        i32.store offset=1126656
        i32.const 0
        i32.const 0
        i32.store offset=1126676
        i32.const 0
        i32.const 0
        i32.store offset=1126628
      end
      i32.const 0
      local.get 2
      i32.store offset=1126636
      i32.const 0
      i32.const 1126720
      i32.store offset=1126632
      i32.const 0
      i32.const 1126720
      i32.store offset=1126200
      i32.const 0
      local.get 4
      i32.store offset=1126220
      i32.const 0
      i32.const -1
      i32.store offset=1126216
      loop  ;; label = @2
        local.get 3
        i32.const 1126244
        i32.add
        local.get 3
        i32.const 1126232
        i32.add
        local.tee 4
        i32.store
        local.get 4
        local.get 3
        i32.const 1126224
        i32.add
        local.tee 5
        i32.store
        local.get 3
        i32.const 1126236
        i32.add
        local.get 5
        i32.store
        local.get 3
        i32.const 1126252
        i32.add
        local.get 3
        i32.const 1126240
        i32.add
        local.tee 5
        i32.store
        local.get 5
        local.get 4
        i32.store
        local.get 3
        i32.const 1126260
        i32.add
        local.get 3
        i32.const 1126248
        i32.add
        local.tee 4
        i32.store
        local.get 4
        local.get 5
        i32.store
        local.get 3
        i32.const 1126256
        i32.add
        local.get 4
        i32.store
        local.get 3
        i32.const 32
        i32.add
        local.tee 3
        i32.const 256
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 1126720
      i32.const -8
      i32.const 1126720
      i32.sub
      i32.const 15
      i32.and
      i32.const 0
      i32.const 1126720
      i32.const 8
      i32.add
      i32.const 15
      i32.and
      select
      local.tee 3
      i32.add
      local.tee 4
      i32.const 4
      i32.add
      local.get 2
      i32.const -56
      i32.add
      local.tee 5
      local.get 3
      i32.sub
      local.tee 3
      i32.const 1
      i32.or
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=1126672
      i32.store offset=1126212
      i32.const 0
      local.get 3
      i32.store offset=1126196
      i32.const 0
      local.get 4
      i32.store offset=1126208
      i32.const 1126720
      local.get 5
      i32.add
      i32.const 56
      i32.store offset=4
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 236
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1126184
                              local.tee 6
                              i32.const 16
                              local.get 0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 2
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.shr_u
                              local.tee 3
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.or
                              i32.const 1
                              i32.xor
                              local.tee 5
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.const 1126232
                              i32.add
                              i32.load
                              local.tee 4
                              i32.const 8
                              i32.add
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 2
                                  local.get 0
                                  i32.const 1126224
                                  i32.add
                                  local.tee 0
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 6
                                  i32.const -2
                                  local.get 5
                                  i32.rotl
                                  i32.and
                                  i32.store offset=1126184
                                  br 1 (;@14;)
                                end
                                local.get 0
                                local.get 2
                                i32.store offset=8
                                local.get 2
                                local.get 0
                                i32.store offset=12
                              end
                              local.get 4
                              local.get 5
                              i32.const 3
                              i32.shl
                              local.tee 5
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 5
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 2
                            i32.const 0
                            i32.load offset=1126192
                            local.tee 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 3
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  local.get 4
                                  i32.shl
                                  i32.const 2
                                  local.get 4
                                  i32.shl
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.or
                                  i32.and
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 3
                                  local.get 3
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 3
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 5
                                  local.get 3
                                  i32.or
                                  local.get 4
                                  local.get 5
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  i32.add
                                  local.tee 5
                                  i32.const 3
                                  i32.shl
                                  local.tee 0
                                  i32.const 1126232
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.load offset=8
                                  local.tee 3
                                  local.get 0
                                  i32.const 1126224
                                  i32.add
                                  local.tee 0
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 6
                                  i32.const -2
                                  local.get 5
                                  i32.rotl
                                  i32.and
                                  local.tee 6
                                  i32.store offset=1126184
                                  br 1 (;@14;)
                                end
                                local.get 0
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 0
                                i32.store offset=12
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 3
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 5
                              i32.const 3
                              i32.shl
                              local.tee 5
                              i32.add
                              local.get 5
                              local.get 2
                              i32.sub
                              local.tee 5
                              i32.store
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 0
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                local.get 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const 3
                                i32.shr_u
                                local.tee 8
                                i32.const 3
                                i32.shl
                                i32.const 1126224
                                i32.add
                                local.set 2
                                i32.const 0
                                i32.load offset=1126204
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 6
                                    i32.const 1
                                    local.get 8
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 6
                                    local.get 8
                                    i32.or
                                    i32.store offset=1126184
                                    local.get 2
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 8
                                local.get 4
                                i32.store offset=12
                                local.get 2
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 2
                                i32.store offset=12
                                local.get 4
                                local.get 8
                                i32.store offset=8
                              end
                              i32.const 0
                              local.get 0
                              i32.store offset=1126204
                              i32.const 0
                              local.get 5
                              i32.store offset=1126192
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=1126188
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 3
                            i32.shr_u
                            local.tee 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 5
                            local.get 3
                            i32.or
                            local.get 4
                            local.get 5
                            i32.shr_u
                            local.tee 3
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 1126488
                            i32.add
                            i32.load
                            local.tee 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.sub
                            local.set 4
                            local.get 0
                            local.set 5
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=16
                                  local.tee 3
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 3
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 2
                                i32.sub
                                local.tee 5
                                local.get 4
                                local.get 5
                                local.get 4
                                i32.lt_u
                                local.tee 5
                                select
                                local.set 4
                                local.get 3
                                local.get 0
                                local.get 5
                                select
                                local.set 0
                                local.get 3
                                local.set 5
                                br 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 0
                              i32.load offset=12
                              local.tee 8
                              local.get 0
                              i32.eq
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1126200
                              local.get 0
                              i32.load offset=8
                              local.tee 3
                              i32.gt_u
                              drop
                              local.get 8
                              local.get 3
                              i32.store offset=8
                              local.get 3
                              local.get 8
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=16
                              local.tee 3
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 5
                            end
                            loop  ;; label = @13
                              local.get 5
                              local.set 11
                              local.get 3
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 5
                              local.get 8
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 2
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 19
                          i32.add
                          local.tee 3
                          i32.const -16
                          i32.and
                          local.set 2
                          i32.const 0
                          i32.load offset=1126188
                          local.tee 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 2
                            i32.const 256
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 2
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 3
                            i32.const 8
                            i32.shr_u
                            local.tee 3
                            local.get 3
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 3
                            i32.shl
                            local.tee 4
                            local.get 4
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.shl
                            local.tee 5
                            local.get 5
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 5
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 3
                            local.get 4
                            i32.or
                            local.get 5
                            i32.or
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.shl
                            local.get 2
                            local.get 3
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                            local.set 11
                          end
                          i32.const 0
                          local.get 2
                          i32.sub
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 1126488
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 3
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 3
                                local.get 2
                                i32.const 0
                                i32.const 25
                                local.get 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 0
                                i32.const 0
                                local.set 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 2
                                    i32.sub
                                    local.tee 6
                                    local.get 4
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 6
                                    local.set 4
                                    local.get 5
                                    local.set 8
                                    local.get 6
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 4
                                    local.get 5
                                    local.set 8
                                    local.get 5
                                    local.set 3
                                    br 3 (;@13;)
                                  end
                                  local.get 3
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 6
                                  local.get 6
                                  local.get 5
                                  local.get 0
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  i32.eq
                                  select
                                  local.get 3
                                  local.get 6
                                  select
                                  local.set 3
                                  local.get 0
                                  i32.const 1
                                  i32.shl
                                  local.set 0
                                  local.get 5
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 3
                                local.get 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 8
                                i32.const 2
                                local.get 11
                                i32.shl
                                local.tee 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.or
                                local.get 7
                                i32.and
                                local.tee 3
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 3
                                i32.shr_u
                                local.tee 5
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 0
                                local.get 3
                                i32.or
                                local.get 5
                                local.get 0
                                i32.shr_u
                                local.tee 3
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 1126488
                                i32.add
                                i32.load
                                local.set 3
                              end
                              local.get 3
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 3
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.sub
                              local.tee 6
                              local.get 4
                              i32.lt_u
                              local.set 0
                              block  ;; label = @14
                                local.get 3
                                i32.load offset=16
                                local.tee 5
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 5
                              end
                              local.get 6
                              local.get 4
                              local.get 0
                              select
                              local.set 4
                              local.get 3
                              local.get 8
                              local.get 0
                              select
                              local.set 8
                              local.get 5
                              local.set 3
                              local.get 5
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 0
                          i32.load offset=1126192
                          local.get 2
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 0
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1126200
                            local.get 8
                            i32.load offset=8
                            local.tee 3
                            i32.gt_u
                            drop
                            local.get 0
                            local.get 3
                            i32.store offset=8
                            local.get 3
                            local.get 0
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 5
                          end
                          loop  ;; label = @12
                            local.get 5
                            local.set 6
                            local.get 3
                            local.tee 0
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 16
                            i32.add
                            local.set 5
                            local.get 0
                            i32.load offset=16
                            local.tee 3
                            br_if 0 (;@12;)
                          end
                          local.get 6
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1126192
                          local.tee 3
                          local.get 2
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1126204
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              local.get 2
                              i32.sub
                              local.tee 5
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 0
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 5
                              i32.store offset=1126192
                              i32.const 0
                              local.get 0
                              i32.store offset=1126204
                              local.get 4
                              local.get 3
                              i32.add
                              local.get 5
                              i32.store
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.get 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 3
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.store offset=1126204
                            i32.const 0
                            i32.const 0
                            i32.store offset=1126192
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1126196
                          local.tee 0
                          local.get 2
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1126208
                          local.tee 3
                          local.get 2
                          i32.add
                          local.tee 4
                          local.get 0
                          local.get 2
                          i32.sub
                          local.tee 5
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.get 5
                          i32.store offset=1126196
                          i32.const 0
                          local.get 4
                          i32.store offset=1126208
                          local.get 3
                          local.get 2
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1126656
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1126664
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=1126668 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=1126660 align=4
                          i32.const 0
                          local.get 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=1126656
                          i32.const 0
                          i32.const 0
                          i32.store offset=1126676
                          i32.const 0
                          i32.const 0
                          i32.store offset=1126628
                          i32.const 65536
                          local.set 4
                        end
                        i32.const 0
                        local.set 3
                        block  ;; label = @11
                          local.get 4
                          local.get 2
                          i32.const 71
                          i32.add
                          local.tee 7
                          i32.add
                          local.tee 6
                          i32.const 0
                          local.get 4
                          i32.sub
                          local.tee 11
                          i32.and
                          local.tee 8
                          local.get 2
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 48
                          i32.store offset=1126680
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1126624
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1126616
                            local.tee 4
                            local.get 8
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 3
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.set 3
                          i32.const 0
                          i32.const 48
                          i32.store offset=1126680
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=1126628
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1126208
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1126632
                              local.set 3
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  i32.load
                                  local.tee 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 5
                                  local.get 3
                                  i32.load offset=4
                                  i32.add
                                  local.get 4
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 3
                                i32.load offset=8
                                local.tee 3
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call $sbrk
                            local.tee 0
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 8
                            local.set 6
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1126660
                              local.tee 3
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 0
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 0
                              i32.sub
                              local.get 4
                              local.get 0
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              i32.add
                              local.set 6
                            end
                            local.get 6
                            local.get 2
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 6
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1126624
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1126616
                              local.tee 4
                              local.get 6
                              i32.add
                              local.tee 5
                              local.get 4
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 5
                              local.get 3
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 6
                            call $sbrk
                            local.tee 3
                            local.get 0
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 6
                          local.get 0
                          i32.sub
                          local.get 11
                          i32.and
                          local.tee 6
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 6
                          call $sbrk
                          local.tee 0
                          local.get 3
                          i32.load
                          local.get 3
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 0
                          local.set 3
                        end
                        block  ;; label = @11
                          local.get 3
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 72
                          i32.add
                          local.get 6
                          i32.le_u
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 7
                            local.get 6
                            i32.sub
                            i32.const 0
                            i32.load offset=1126664
                            local.tee 4
                            i32.add
                            i32.const 0
                            local.get 4
                            i32.sub
                            i32.and
                            local.tee 4
                            i32.const 2147483646
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.set 0
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            local.get 4
                            call $sbrk
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 6
                            i32.add
                            local.set 6
                            local.get 3
                            local.set 0
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 6
                          i32.sub
                          call $sbrk
                          drop
                          br 4 (;@7;)
                        end
                        local.get 3
                        local.set 0
                        local.get 3
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 0
                    br 5 (;@3;)
                  end
                  local.get 0
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1126628
                i32.const 4
                i32.or
                i32.store offset=1126628
              end
              local.get 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 8
              call $sbrk
              local.set 0
              i32.const 0
              call $sbrk
              local.set 3
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 3
              i32.ge_u
              br_if 1 (;@4;)
              local.get 3
              local.get 0
              i32.sub
              local.tee 6
              local.get 2
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1126616
            local.get 6
            i32.add
            local.tee 3
            i32.store offset=1126616
            block  ;; label = @5
              local.get 3
              i32.const 0
              i32.load offset=1126620
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 3
              i32.store offset=1126620
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1126208
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 1126632
                    local.set 3
                    loop  ;; label = @9
                      local.get 0
                      local.get 3
                      i32.load
                      local.tee 5
                      local.get 3
                      i32.load offset=4
                      local.tee 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1126200
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 3
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 0
                    i32.store offset=1126200
                  end
                  i32.const 0
                  local.set 3
                  i32.const 0
                  local.get 6
                  i32.store offset=1126636
                  i32.const 0
                  local.get 0
                  i32.store offset=1126632
                  i32.const 0
                  i32.const -1
                  i32.store offset=1126216
                  i32.const 0
                  i32.const 0
                  i32.load offset=1126656
                  i32.store offset=1126220
                  i32.const 0
                  i32.const 0
                  i32.store offset=1126644
                  loop  ;; label = @8
                    local.get 3
                    i32.const 1126244
                    i32.add
                    local.get 3
                    i32.const 1126232
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 4
                    local.get 3
                    i32.const 1126224
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 3
                    i32.const 1126236
                    i32.add
                    local.get 5
                    i32.store
                    local.get 3
                    i32.const 1126252
                    i32.add
                    local.get 3
                    i32.const 1126240
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 5
                    local.get 4
                    i32.store
                    local.get 3
                    i32.const 1126260
                    i32.add
                    local.get 3
                    i32.const 1126248
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 4
                    local.get 5
                    i32.store
                    local.get 3
                    i32.const 1126256
                    i32.add
                    local.get 4
                    i32.store
                    local.get 3
                    i32.const 32
                    i32.add
                    local.tee 3
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 0
                  i32.const -8
                  local.get 0
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 3
                  i32.add
                  local.tee 4
                  local.get 6
                  i32.const -56
                  i32.add
                  local.tee 5
                  local.get 3
                  i32.sub
                  local.tee 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1126672
                  i32.store offset=1126212
                  i32.const 0
                  local.get 3
                  i32.store offset=1126196
                  i32.const 0
                  local.get 4
                  i32.store offset=1126208
                  local.get 0
                  local.get 5
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 2 (;@5;)
                end
                local.get 3
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 5
                local.get 4
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 4
                i32.le_u
                br_if 0 (;@6;)
                local.get 4
                i32.const -8
                local.get 4
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get 4
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee 5
                i32.add
                local.tee 0
                i32.const 0
                i32.load offset=1126196
                local.get 6
                i32.add
                local.tee 11
                local.get 5
                i32.sub
                local.tee 5
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 8
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1126672
                i32.store offset=1126212
                i32.const 0
                local.get 5
                i32.store offset=1126196
                i32.const 0
                local.get 0
                i32.store offset=1126208
                local.get 4
                local.get 11
                i32.add
                i32.const 56
                i32.store offset=4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.const 0
                i32.load offset=1126200
                local.tee 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 0
                i32.store offset=1126200
                local.get 0
                local.set 8
              end
              local.get 0
              local.get 6
              i32.add
              local.set 5
              i32.const 1126632
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 3
                              i32.load
                              local.get 5
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 3
                              i32.load offset=8
                              local.tee 3
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 3
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 1126632
                        local.set 3
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.load
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 3
                            i32.load offset=4
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 3
                          br 0 (;@11;)
                        end
                      end
                      local.get 3
                      local.get 0
                      i32.store
                      local.get 3
                      local.get 3
                      i32.load offset=4
                      local.get 6
                      i32.add
                      i32.store offset=4
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 11
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 5
                      i32.const -8
                      local.get 5
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 5
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 11
                      local.get 2
                      i32.add
                      local.tee 2
                      i32.sub
                      local.set 5
                      block  ;; label = @10
                        local.get 4
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 2
                        i32.store offset=1126208
                        i32.const 0
                        i32.const 0
                        i32.load offset=1126196
                        local.get 5
                        i32.add
                        local.tee 3
                        i32.store offset=1126196
                        local.get 2
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1126204
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 2
                        i32.store offset=1126204
                        i32.const 0
                        i32.const 0
                        i32.load offset=1126192
                        local.get 5
                        i32.add
                        local.tee 3
                        i32.store offset=1126192
                        local.get 2
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 3
                        i32.add
                        local.get 3
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 6
                        i32.load offset=4
                        local.tee 3
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const -8
                        i32.and
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 6
                            i32.load offset=8
                            local.tee 4
                            local.get 3
                            i32.const 3
                            i32.shr_u
                            local.tee 8
                            i32.const 3
                            i32.shl
                            i32.const 1126224
                            i32.add
                            local.tee 0
                            i32.eq
                            drop
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 3
                              local.get 4
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1126184
                              i32.const -2
                              local.get 8
                              i32.rotl
                              i32.and
                              i32.store offset=1126184
                              br 2 (;@11;)
                            end
                            local.get 3
                            local.get 0
                            i32.eq
                            drop
                            local.get 3
                            local.get 4
                            i32.store offset=8
                            local.get 4
                            local.get 3
                            i32.store offset=12
                            br 1 (;@11;)
                          end
                          local.get 6
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 0
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 6
                              i32.load offset=8
                              local.tee 3
                              i32.gt_u
                              drop
                              local.get 0
                              local.get 3
                              i32.store offset=8
                              local.get 3
                              local.get 0
                              i32.store offset=12
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 0
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 3
                              local.set 8
                              local.get 4
                              local.tee 0
                              i32.const 20
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 3
                              local.get 0
                              i32.load offset=16
                              local.tee 4
                              br_if 0 (;@13;)
                            end
                            local.get 8
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=28
                              local.tee 4
                              i32.const 2
                              i32.shl
                              i32.const 1126488
                              i32.add
                              local.tee 3
                              i32.load
                              local.get 6
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 3
                              local.get 0
                              i32.store
                              local.get 0
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1126188
                              i32.const -2
                              local.get 4
                              i32.rotl
                              i32.and
                              i32.store offset=1126188
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 6
                            i32.eq
                            select
                            i32.add
                            local.get 0
                            i32.store
                            local.get 0
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 0
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 6
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 3
                            i32.store offset=16
                            local.get 3
                            local.get 0
                            i32.store offset=24
                          end
                          local.get 6
                          i32.load offset=20
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 20
                          i32.add
                          local.get 3
                          i32.store
                          local.get 3
                          local.get 0
                          i32.store offset=24
                        end
                        local.get 7
                        local.get 5
                        i32.add
                        local.set 5
                        local.get 6
                        local.get 7
                        i32.add
                        local.set 6
                      end
                      local.get 6
                      local.get 6
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 2
                      local.get 5
                      i32.add
                      local.get 5
                      i32.store
                      local.get 2
                      local.get 5
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block  ;; label = @10
                        local.get 5
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 3
                        i32.shr_u
                        local.tee 4
                        i32.const 3
                        i32.shl
                        i32.const 1126224
                        i32.add
                        local.set 3
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1126184
                            local.tee 5
                            i32.const 1
                            local.get 4
                            i32.shl
                            local.tee 4
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 5
                            local.get 4
                            i32.or
                            i32.store offset=1126184
                            local.get 3
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 4
                        end
                        local.get 4
                        local.get 2
                        i32.store offset=12
                        local.get 3
                        local.get 2
                        i32.store offset=8
                        local.get 2
                        local.get 3
                        i32.store offset=12
                        local.get 2
                        local.get 4
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 3
                      block  ;; label = @10
                        local.get 5
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 8
                        i32.shr_u
                        local.tee 3
                        local.get 3
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 3
                        i32.shl
                        local.tee 4
                        local.get 4
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 0
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 3
                        local.get 4
                        i32.or
                        local.get 0
                        i32.or
                        i32.sub
                        local.tee 3
                        i32.const 1
                        i32.shl
                        local.get 5
                        local.get 3
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 3
                      end
                      local.get 2
                      local.get 3
                      i32.store offset=28
                      local.get 2
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 3
                      i32.const 2
                      i32.shl
                      i32.const 1126488
                      i32.add
                      local.set 4
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1126188
                        local.tee 0
                        i32.const 1
                        local.get 3
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 2
                        i32.store
                        i32.const 0
                        local.get 0
                        local.get 8
                        i32.or
                        i32.store offset=1126188
                        local.get 2
                        local.get 4
                        i32.store offset=24
                        local.get 2
                        local.get 2
                        i32.store offset=8
                        local.get 2
                        local.get 2
                        i32.store offset=12
                        br 3 (;@7;)
                      end
                      local.get 5
                      i32.const 0
                      i32.const 25
                      local.get 3
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 3
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 3
                      local.get 4
                      i32.load
                      local.set 0
                      loop  ;; label = @10
                        local.get 0
                        local.tee 4
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 5
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const 29
                        i32.shr_u
                        local.set 0
                        local.get 3
                        i32.const 1
                        i32.shl
                        local.set 3
                        local.get 4
                        local.get 0
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 8
                        i32.load
                        local.tee 0
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      local.get 2
                      i32.store
                      local.get 2
                      local.get 4
                      i32.store offset=24
                      local.get 2
                      local.get 2
                      i32.store offset=12
                      local.get 2
                      local.get 2
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.const -8
                    local.get 0
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 3
                    i32.add
                    local.tee 11
                    local.get 6
                    i32.const -56
                    i32.add
                    local.tee 8
                    local.get 3
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 8
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    local.get 4
                    local.get 5
                    i32.const 55
                    local.get 5
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 5
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    local.tee 8
                    local.get 8
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 8
                    i32.const 35
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1126672
                    i32.store offset=1126212
                    i32.const 0
                    local.get 3
                    i32.store offset=1126196
                    i32.const 0
                    local.get 11
                    i32.store offset=1126208
                    local.get 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=1126640 align=4
                    i64.store align=4
                    local.get 8
                    i32.const 0
                    i64.load offset=1126632 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 8
                    i32.const 8
                    i32.add
                    i32.store offset=1126640
                    i32.const 0
                    local.get 6
                    i32.store offset=1126636
                    i32.const 0
                    local.get 0
                    i32.store offset=1126632
                    i32.const 0
                    i32.const 0
                    i32.store offset=1126644
                    local.get 8
                    i32.const 36
                    i32.add
                    local.set 3
                    loop  ;; label = @9
                      local.get 3
                      i32.const 7
                      i32.store
                      local.get 5
                      local.get 3
                      i32.const 4
                      i32.add
                      local.tee 3
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 8
                    local.get 8
                    local.get 4
                    i32.sub
                    local.tee 6
                    i32.store
                    local.get 4
                    local.get 6
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 6
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 3
                      i32.shr_u
                      local.tee 5
                      i32.const 3
                      i32.shl
                      i32.const 1126224
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1126184
                          local.tee 0
                          i32.const 1
                          local.get 5
                          i32.shl
                          local.tee 5
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 0
                          local.get 5
                          i32.or
                          i32.store offset=1126184
                          local.get 3
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 3
                        i32.load offset=8
                        local.set 5
                      end
                      local.get 5
                      local.get 4
                      i32.store offset=12
                      local.get 3
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 3
                      i32.store offset=12
                      local.get 4
                      local.get 5
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 3
                    block  ;; label = @9
                      local.get 6
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 8
                      i32.shr_u
                      local.tee 3
                      local.get 3
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 3
                      i32.shl
                      local.tee 5
                      local.get 5
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 5
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 0
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 3
                      local.get 5
                      i32.or
                      local.get 0
                      i32.or
                      i32.sub
                      local.tee 3
                      i32.const 1
                      i32.shl
                      local.get 6
                      local.get 3
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 3
                    end
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 4
                    i32.const 28
                    i32.add
                    local.get 3
                    i32.store
                    local.get 3
                    i32.const 2
                    i32.shl
                    i32.const 1126488
                    i32.add
                    local.set 5
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1126188
                      local.tee 0
                      i32.const 1
                      local.get 3
                      i32.shl
                      local.tee 8
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 4
                      i32.store
                      i32.const 0
                      local.get 0
                      local.get 8
                      i32.or
                      i32.store offset=1126188
                      local.get 4
                      i32.const 24
                      i32.add
                      local.get 5
                      i32.store
                      local.get 4
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 4
                      i32.store offset=12
                      br 4 (;@5;)
                    end
                    local.get 6
                    i32.const 0
                    i32.const 25
                    local.get 3
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get 3
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 3
                    local.get 5
                    i32.load
                    local.set 0
                    loop  ;; label = @9
                      local.get 0
                      local.tee 5
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get 6
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      i32.const 29
                      i32.shr_u
                      local.set 0
                      local.get 3
                      i32.const 1
                      i32.shl
                      local.set 3
                      local.get 5
                      local.get 0
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 8
                      i32.load
                      local.tee 0
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.store
                    local.get 4
                    i32.const 24
                    i32.add
                    local.get 5
                    i32.store
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 4
                  i32.load offset=8
                  local.tee 3
                  local.get 2
                  i32.store offset=12
                  local.get 4
                  local.get 2
                  i32.store offset=8
                  local.get 2
                  i32.const 0
                  i32.store offset=24
                  local.get 2
                  local.get 4
                  i32.store offset=12
                  local.get 2
                  local.get 3
                  i32.store offset=8
                end
                local.get 11
                i32.const 8
                i32.add
                local.set 3
                br 5 (;@1;)
              end
              local.get 5
              i32.load offset=8
              local.tee 3
              local.get 4
              i32.store offset=12
              local.get 5
              local.get 4
              i32.store offset=8
              local.get 4
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              local.get 4
              local.get 5
              i32.store offset=12
              local.get 4
              local.get 3
              i32.store offset=8
            end
            i32.const 0
            i32.load offset=1126196
            local.tee 3
            local.get 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1126208
            local.tee 4
            local.get 2
            i32.add
            local.tee 5
            local.get 3
            local.get 2
            i32.sub
            local.tee 3
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.get 3
            i32.store offset=1126196
            i32.const 0
            local.get 5
            i32.store offset=1126208
            local.get 4
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 4
            i32.const 8
            i32.add
            local.set 3
            br 3 (;@1;)
          end
          i32.const 0
          local.set 3
          i32.const 0
          i32.const 48
          i32.store offset=1126680
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1126488
              i32.add
              local.tee 3
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 0
              i32.store
              local.get 0
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              local.tee 7
              i32.store offset=1126188
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 0
            i32.store
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 0
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 4
            local.get 2
            i32.add
            local.tee 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 3
            i32.add
            local.tee 3
            local.get 3
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 2
          i32.add
          local.tee 0
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 8
          local.get 2
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 4
          i32.add
          local.get 4
          i32.store
          block  ;; label = @4
            local.get 4
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 1126224
            i32.add
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1126184
                local.tee 5
                i32.const 1
                local.get 4
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 4
                i32.or
                i32.store offset=1126184
                local.get 3
                local.set 4
                br 1 (;@5;)
              end
              local.get 3
              i32.load offset=8
              local.set 4
            end
            local.get 4
            local.get 0
            i32.store offset=12
            local.get 3
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 3
            i32.store offset=12
            local.get 0
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 3
          block  ;; label = @4
            local.get 4
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 8
            i32.shr_u
            local.tee 3
            local.get 3
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 3
            i32.shl
            local.tee 5
            local.get 5
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 5
            i32.shl
            local.tee 2
            local.get 2
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 2
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 3
            local.get 5
            i32.or
            local.get 2
            i32.or
            i32.sub
            local.tee 3
            i32.const 1
            i32.shl
            local.get 4
            local.get 3
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 3
          end
          local.get 0
          local.get 3
          i32.store offset=28
          local.get 0
          i64.const 0
          i64.store offset=16 align=4
          local.get 3
          i32.const 2
          i32.shl
          i32.const 1126488
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 7
            i32.const 1
            local.get 3
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.store
            i32.const 0
            local.get 7
            local.get 2
            i32.or
            i32.store offset=1126188
            local.get 0
            local.get 5
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 0
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.const 0
          i32.const 25
          local.get 3
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 3
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 3
          local.get 5
          i32.load
          local.set 2
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.tee 5
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 4
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const 29
              i32.shr_u
              local.set 2
              local.get 3
              i32.const 1
              i32.shl
              local.set 3
              local.get 5
              local.get 2
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 6
              i32.load
              local.tee 2
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 0
            i32.store
            local.get 0
            local.get 5
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=24
          local.get 0
          local.get 5
          i32.store offset=12
          local.get 0
          local.get 3
          i32.store offset=8
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 1126488
            i32.add
            local.tee 3
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1126188
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 8
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 2
          i32.add
          local.tee 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 2
        i32.add
        local.tee 5
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 5
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 3
          i32.shr_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.const 1126224
          i32.add
          local.set 2
          i32.const 0
          i32.load offset=1126204
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 8
              i32.shl
              local.tee 8
              local.get 6
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 6
              i32.or
              i32.store offset=1126184
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 8
          end
          local.get 8
          local.get 3
          i32.store offset=12
          local.get 2
          local.get 3
          i32.store offset=8
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 5
        i32.store offset=1126204
        i32.const 0
        local.get 4
        i32.store offset=1126192
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $free (type 1) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1126200
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          i32.const 0
          i32.load offset=1126204
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=8
            local.tee 4
            local.get 2
            i32.const 3
            i32.shr_u
            local.tee 5
            i32.const 3
            i32.shl
            i32.const 1126224
            i32.add
            local.tee 6
            i32.eq
            drop
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 4
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1126184
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1126184
              br 3 (;@2;)
            end
            local.get 2
            local.get 6
            i32.eq
            drop
            local.get 2
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 2
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 6
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 1
              i32.load offset=8
              local.tee 2
              i32.gt_u
              drop
              local.get 6
              local.get 2
              i32.store offset=8
              local.get 2
              local.get 6
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 5
              local.get 4
              local.tee 6
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              local.set 2
              local.get 6
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 5
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1126488
              i32.add
              local.tee 2
              i32.load
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1126188
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=1126188
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 6
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 0
        i32.store offset=1126192
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      local.get 3
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126208
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1126208
            i32.const 0
            i32.const 0
            i32.load offset=1126196
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1126196
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=1126204
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1126192
            i32.const 0
            i32.const 0
            i32.store offset=1126204
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126204
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1126204
            i32.const 0
            i32.const 0
            i32.load offset=1126192
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1126192
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 1126224
              i32.add
              local.tee 6
              i32.eq
              drop
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 2
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1126184
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1126184
                br 2 (;@4;)
              end
              local.get 2
              local.get 6
              i32.eq
              drop
              local.get 2
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 2
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 6
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1126200
                local.get 3
                i32.load offset=8
                local.tee 2
                i32.gt_u
                drop
                local.get 6
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 5
                local.get 4
                local.tee 6
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 2
                local.get 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1126488
                i32.add
                local.tee 2
                i32.load
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1126188
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1126188
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 6
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.load offset=1126204
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1126192
          return
        end
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 2
        i32.const 3
        i32.shl
        i32.const 1126224
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126184
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 2
            i32.or
            i32.store offset=1126184
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 2
        local.get 2
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 2
        local.get 4
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 0
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 1
      i32.const 28
      i32.add
      local.get 2
      i32.store
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1126488
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1126188
          local.tee 6
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          local.get 4
          local.get 1
          i32.store
          i32.const 0
          local.get 6
          local.get 3
          i32.or
          i32.store offset=1126188
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 1
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 4
        i32.load
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 6
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 6
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 3
            i32.load
            local.tee 6
            br_if 0 (;@4;)
          end
          local.get 3
          local.get 1
          i32.store
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
      end
      i32.const 0
      i32.const 0
      i32.load offset=1126216
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=1126216
    end)
  (func $calloc (type 2) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      call $memset
      drop
    end
    local.get 0)
  (func $realloc (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1126680
      i32.const 0
      return
    end
    i32.const 16
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.get 1
    i32.const 11
    i32.lt_u
    select
    local.set 2
    local.get 0
    i32.const -4
    i32.add
    local.tee 3
    i32.load
    local.tee 4
    i32.const -8
    i32.and
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.const 4
          i32.or
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=1126664
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 0
        i32.const -8
        i32.add
        local.tee 6
        local.get 5
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 5
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call $dispose_chunk
          local.get 0
          return
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1126208
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1126196
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=1126208
          i32.const 0
          local.get 5
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=1126196
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1126204
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1126192
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              local.get 2
              local.get 4
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 6
              local.get 5
              i32.add
              local.tee 5
              local.get 1
              i32.store
              local.get 5
              local.get 5
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 5
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 5
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 1
            i32.const 0
            local.set 2
          end
          i32.const 0
          local.get 2
          i32.store offset=1126204
          i32.const 0
          local.get 1
          i32.store offset=1126192
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 8
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.const -8
        i32.and
        local.get 5
        i32.add
        local.tee 9
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 9
        local.get 2
        i32.sub
        local.set 10
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.load offset=8
            local.tee 1
            local.get 8
            i32.const 3
            i32.shr_u
            local.tee 11
            i32.const 3
            i32.shl
            i32.const 1126224
            i32.add
            local.tee 8
            i32.eq
            drop
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 5
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1126184
              i32.const -2
              local.get 11
              i32.rotl
              i32.and
              i32.store offset=1126184
              br 2 (;@3;)
            end
            local.get 5
            local.get 8
            i32.eq
            drop
            local.get 5
            local.get 1
            i32.store offset=8
            local.get 1
            local.get 5
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 12
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 8
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              i32.const 0
              i32.load offset=1126200
              local.get 7
              i32.load offset=8
              local.tee 1
              i32.gt_u
              drop
              local.get 8
              local.get 1
              i32.store offset=8
              local.get 1
              local.get 8
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 7
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 7
              i32.const 16
              i32.add
              local.tee 1
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              i32.const 0
              local.set 8
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 1
              local.set 11
              local.get 5
              local.tee 8
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 8
              i32.const 16
              i32.add
              local.set 1
              local.get 8
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 11
            i32.const 0
            i32.store
          end
          local.get 12
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1126488
              i32.add
              local.tee 1
              i32.load
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 8
              i32.store
              local.get 8
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1126188
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1126188
              br 2 (;@3;)
            end
            local.get 12
            i32.const 16
            i32.const 20
            local.get 12
            i32.load offset=16
            local.get 7
            i32.eq
            select
            i32.add
            local.get 8
            i32.store
            local.get 8
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 8
          local.get 12
          i32.store offset=24
          block  ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 8
            i32.store offset=24
          end
          local.get 7
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 20
          i32.add
          local.get 1
          i32.store
          local.get 1
          local.get 8
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 10
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 1
          i32.and
          local.get 9
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 9
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 3
        local.get 2
        local.get 4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 6
        local.get 2
        i32.add
        local.tee 1
        local.get 10
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 6
        local.get 9
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 10
        call $dispose_chunk
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 1
        call $dlmalloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      i32.const -4
      i32.const -8
      local.get 3
      i32.load
      local.tee 5
      i32.const 3
      i32.and
      select
      local.get 5
      i32.const -8
      i32.and
      i32.add
      local.tee 5
      local.get 1
      local.get 5
      local.get 1
      i32.lt_u
      select
      call $memcpy
      local.set 1
      local.get 0
      call $dlfree
      local.get 1
      local.set 0
    end
    local.get 0)
  (func $dispose_chunk (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126204
            local.get 0
            local.get 3
            i32.sub
            local.tee 0
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              local.tee 4
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 1126224
              i32.add
              local.tee 6
              i32.eq
              drop
              local.get 0
              i32.load offset=12
              local.tee 3
              local.get 4
              i32.ne
              br_if 2 (;@3;)
              i32.const 0
              i32.const 0
              i32.load offset=1126184
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1126184
              br 3 (;@2;)
            end
            local.get 0
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                local.tee 6
                local.get 0
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1126200
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.gt_u
                drop
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 0
                i32.const 16
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 3
                local.set 5
                local.get 4
                local.tee 6
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 3
                local.get 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1126488
                i32.add
                local.tee 3
                i32.load
                local.get 0
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1126188
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1126188
                br 4 (;@2;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 0
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 3 (;@2;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 0
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 0
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 6
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 6
            i32.store offset=24
            br 2 (;@2;)
          end
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          local.get 2
          local.get 3
          i32.const -2
          i32.and
          i32.store offset=4
          i32.const 0
          local.get 1
          i32.store offset=1126192
          local.get 2
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          return
        end
        local.get 3
        local.get 6
        i32.eq
        drop
        local.get 3
        local.get 4
        i32.store offset=8
        local.get 4
        local.get 3
        i32.store offset=12
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126208
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=1126208
            i32.const 0
            i32.const 0
            i32.load offset=1126196
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1126196
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1126204
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1126192
            i32.const 0
            i32.const 0
            i32.store offset=1126204
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126204
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=1126204
            i32.const 0
            i32.const 0
            i32.load offset=1126192
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1126192
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          local.get 3
          i32.const -8
          i32.and
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=8
              local.tee 4
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 1126224
              i32.add
              local.tee 6
              i32.eq
              drop
              block  ;; label = @6
                local.get 2
                i32.load offset=12
                local.tee 3
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1126184
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1126184
                br 2 (;@4;)
              end
              local.get 3
              local.get 6
              i32.eq
              drop
              local.get 3
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 3
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=12
                local.tee 6
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1126200
                local.get 2
                i32.load offset=8
                local.tee 3
                i32.gt_u
                drop
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 3
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.tee 4
                i32.load
                local.tee 3
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 4
                local.set 5
                local.get 3
                local.tee 6
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 3
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 4
                local.get 6
                i32.load offset=16
                local.tee 3
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1126488
                i32.add
                local.tee 3
                i32.load
                local.get 2
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1126188
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1126188
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 2
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 2
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.load offset=1126204
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=1126192
          return
        end
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.shr_u
        local.tee 3
        i32.const 3
        i32.shl
        i32.const 1126224
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1126184
            local.tee 4
            i32.const 1
            local.get 3
            i32.shl
            local.tee 3
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 3
            i32.or
            i32.store offset=1126184
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.set 3
        end
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.shr_u
        local.tee 3
        local.get 3
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 3
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 3
        local.get 4
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 3
        i32.const 1
        i32.shl
        local.get 1
        local.get 3
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 3
      end
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 28
      i32.add
      local.get 3
      i32.store
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1126488
      i32.add
      local.set 4
      block  ;; label = @2
        i32.const 0
        i32.load offset=1126188
        local.tee 6
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store
        i32.const 0
        local.get 6
        local.get 2
        i32.or
        i32.store offset=1126188
        local.get 0
        i32.const 24
        i32.add
        local.get 4
        i32.store
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 4
      i32.load
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 6
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 4
          local.get 6
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 2
          i32.load
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        i32.store
        local.get 0
        i32.const 24
        i32.add
        local.get 4
        i32.store
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 24
      i32.add
      i32.const 0
      i32.store
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func $internal_memalign (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 16
        local.get 0
        i32.const 16
        i32.gt_u
        select
        local.tee 2
        local.get 2
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      i32.const 32
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.tee 0
        i32.const 1
        i32.shl
        local.set 3
        local.get 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const -64
      local.get 0
      i32.sub
      local.get 1
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1126680
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      i32.add
      i32.const 12
      i32.add
      call $dlmalloc
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 3
    i32.const -8
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.add
        local.get 3
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 3
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 3
      i32.const 0
      local.get 0
      local.get 3
      local.get 2
      i32.sub
      i32.const 15
      i32.gt_u
      select
      i32.add
      local.tee 0
      local.get 2
      i32.sub
      local.tee 3
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 2
        i32.load
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 6
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 3
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 2
      local.get 3
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 3
      call $dispose_chunk
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -8
      i32.and
      local.tee 2
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.tee 3
      local.get 2
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.add
      local.tee 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 1
      call $dispose_chunk
    end
    local.get 0
    i32.const 8
    i32.add)
  (func $aligned_alloc (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    local.get 0
    local.get 1
    call $internal_memalign)
  (func $__wasilibc_initialize_environ_eagerly (type 0)
    call $__wasilibc_initialize_environ)
  (func $__wasi_environ_get (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_get
    i32.const 65535
    i32.and)
  (func $__wasi_environ_sizes_get (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_sizes_get
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 1) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $_Exit (type 1) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__wasilibc_ensure_environ (type 0)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1126684
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      call $__wasilibc_initialize_environ
    end)
  (func $__wasilibc_initialize_environ (type 0)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 12
          i32.add
          local.get 0
          i32.const 8
          i32.add
          call $__wasi_environ_sizes_get
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 1
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1126688
            i32.store offset=1126684
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.tee 2
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              call $malloc
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const 4
              call $calloc
              local.tee 1
              br_if 1 (;@4;)
              local.get 3
              call $free
            end
            i32.const 70
            call $_Exit
            unreachable
          end
          local.get 1
          local.get 3
          call $__wasi_environ_get
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          call $free
          local.get 1
          call $free
        end
        i32.const 71
        call $_Exit
        unreachable
      end
      i32.const 0
      local.get 1
      i32.store offset=1126684
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $getcwd (type 2) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1126064
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        call $strdup
        local.tee 0
        br_if 1 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1126680
        i32.const 0
        return
      end
      block  ;; label = @2
        local.get 2
        call $strlen
        i32.const 1
        i32.add
        local.get 1
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        call $strcpy
        return
      end
      i32.const 0
      local.set 0
      i32.const 0
      i32.const 68
      i32.store offset=1126680
    end
    local.get 0)
  (func $sbrk (type 5) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1126680
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $abort (type 0)
    unreachable
    unreachable)
  (func $dummy (type 0))
  (func $__wasm_call_dtors (type 0)
    call $dummy
    call $dummy)
  (func $exit (type 1) (param i32)
    call $dummy
    call $dummy
    local.get 0
    call $_Exit
    unreachable)
  (func $getenv (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call $__wasilibc_ensure_environ
    block  ;; label = @1
      local.get 0
      i32.const 61
      call $__strchrnul
      local.get 0
      i32.sub
      local.tee 1
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.add
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1126684
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 4
      i32.add
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 4
            local.get 1
            call $strncmp
            br_if 0 (;@4;)
            local.get 4
            local.get 1
            i32.add
            local.tee 4
            i32.load8_u
            i32.const 61
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 3
          i32.load
          local.set 4
          local.get 3
          i32.const 4
          i32.add
          local.set 3
          local.get 4
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 4
      i32.const 1
      i32.add
      local.set 2
    end
    local.get 2)
  (func $strdup (type 5) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      call $memcpy
      drop
    end
    local.get 2)
  (func $memmove (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 0
        local.get 2
        i32.add
        local.tee 3
        i32.sub
        i32.const 0
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.xor
      i32.const 3
      i32.and
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.set 4
              local.get 0
              local.set 3
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 2
              local.set 4
              local.get 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 2
            i32.const -1
            i32.add
            local.set 4
            block  ;; label = @5
              local.get 0
              i32.const 1
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const -2
            i32.add
            local.set 4
            block  ;; label = @5
              local.get 0
              i32.const 2
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 2
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 2
            i32.const -3
            i32.add
            local.set 4
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 3
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 0
            i32.const 4
            i32.add
            local.set 3
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 2
            i32.const -4
            i32.add
            local.set 4
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 4
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.const 3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const -1
              i32.add
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              block  ;; label = @6
                local.get 4
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const -2
              i32.add
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              block  ;; label = @6
                local.get 4
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const -3
              i32.add
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              block  ;; label = @6
                local.get 4
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const -4
              i32.add
              local.tee 2
              i32.add
              local.get 1
              local.get 2
              i32.add
              i32.load8_u
              i32.store8
            end
            local.get 2
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.const -4
              i32.add
              local.tee 5
              i32.const 2
              i32.shr_u
              i32.const 1
              i32.add
              i32.const 3
              i32.and
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const -4
              i32.add
              local.set 4
              local.get 0
              i32.const -4
              i32.add
              local.set 6
              loop  ;; label = @6
                local.get 6
                local.get 2
                i32.add
                local.get 4
                local.get 2
                i32.add
                i32.load
                i32.store
                local.get 2
                i32.const -4
                i32.add
                local.set 2
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                br_if 0 (;@6;)
              end
            end
            local.get 5
            i32.const 12
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -16
            i32.add
            local.set 6
            local.get 0
            i32.const -16
            i32.add
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.get 2
              i32.add
              local.tee 3
              i32.const 12
              i32.add
              local.get 6
              local.get 2
              i32.add
              local.tee 4
              i32.const 12
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 4
              i32.const 4
              i32.add
              i32.load
              i32.store
              local.get 3
              local.get 4
              i32.load
              i32.store
              local.get 2
              i32.const -16
              i32.add
              local.tee 2
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i32.const -1
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.and
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const -1
            i32.add
            local.set 4
            local.get 0
            i32.const -1
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.get 4
              local.get 2
              i32.add
              i32.load8_u
              i32.store8
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i32.const 3
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          i32.const -4
          i32.add
          local.set 4
          local.get 0
          i32.const -4
          i32.add
          local.set 6
          loop  ;; label = @4
            local.get 6
            local.get 2
            i32.add
            local.tee 1
            i32.const 3
            i32.add
            local.get 4
            local.get 2
            i32.add
            local.tee 3
            i32.const 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 2
            i32.add
            local.get 3
            i32.const 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            local.get 3
            i32.load8_u
            i32.store8
            local.get 2
            i32.const -4
            i32.add
            local.tee 2
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const -4
          i32.add
          local.tee 6
          i32.const 2
          i32.shr_u
          i32.const 1
          i32.add
          i32.const 7
          i32.and
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 3
            i32.const 4
            i32.add
            local.set 3
            local.get 4
            i32.const -4
            i32.add
            local.set 4
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 28
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 1
          i32.const 4
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          i32.const 12
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          i32.const 16
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 20
          i32.add
          local.get 1
          i32.const 20
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 24
          i32.add
          local.get 1
          i32.const 24
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 28
          i32.add
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.store
          local.get 3
          i32.const 32
          i32.add
          local.set 3
          local.get 1
          i32.const 32
          i32.add
          local.set 1
          local.get 4
          i32.const -32
          i32.add
          local.tee 4
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const -1
      i32.add
      local.set 6
      block  ;; label = @2
        local.get 4
        i32.const 7
        i32.and
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 4
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
        end
      end
      local.get 6
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.const 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.const 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.const 3
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.const 6
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.const 7
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 4
        i32.const -8
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $strlen (type 5) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 1
        local.get 0
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 1
      end
      local.get 1
      i32.const -4
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.tee 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $strerror (type 5) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1126716
      local.tee 1
      br_if 0 (;@1;)
      i32.const 1126692
      local.set 1
      i32.const 0
      i32.const 1126692
      i32.store offset=1126716
    end
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 1121568
    i32.add
    i32.load16_u
    i32.const 1120010
    i32.add
    local.get 1
    i32.load offset=20
    call $__lctrans)
  (func $strerror_r (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call $strerror
        local.tee 0
        call $strlen
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 68
        local.set 3
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        call $memcpy
        local.get 2
        i32.add
        i32.const 0
        i32.store8
        i32.const 68
        return
      end
      local.get 1
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      call $memcpy
      drop
      i32.const 0
      local.set 3
    end
    local.get 3)
  (func $__stpcpy (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.load8_u
          local.tee 2
          i32.store8
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 2
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 3
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        local.get 1
        i32.load
        local.tee 0
        i32.const -1
        i32.xor
        local.get 0
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 2
          local.get 0
          i32.store
          local.get 2
          i32.const 4
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 0
          i32.const -1
          i32.xor
          local.get 0
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 1
      i32.load8_u
      local.tee 0
      i32.store8
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 1
        i32.load8_u
        local.tee 0
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func $strcpy (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__stpcpy
    drop
    local.get 0)
  (func $__strchrnul (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.and
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 3
              br_if 0 (;@5;)
              local.get 0
              return
            end
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            return
          end
          local.get 0
          local.get 0
          call $strlen
          i32.add
          return
        end
        block  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 2
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 0
      end
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 16843009
        i32.mul
        local.set 2
        loop  ;; label = @3
          local.get 3
          local.get 2
          i32.xor
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.load
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const -1
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.load8_u
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 255
        i32.and
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func $memcpy (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        i32.const -1
        i32.add
        local.set 3
        local.get 0
        i32.const 1
        i32.add
        local.set 4
        local.get 1
        i32.const 1
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 2
        i32.const -2
        i32.add
        local.set 3
        local.get 0
        i32.const 2
        i32.add
        local.set 4
        local.get 1
        i32.const 2
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 2
        i32.const -3
        i32.add
        local.set 3
        local.get 0
        i32.const 3
        i32.add
        local.set 4
        local.get 1
        i32.const 3
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 2
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 4
        i32.add
        local.set 4
        local.get 1
        i32.const 4
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      local.set 3
      local.get 0
      local.set 4
      local.get 1
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          local.tee 1
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 3
                i32.const -16
                i32.add
                local.tee 1
                i32.const 16
                i32.and
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i64.load align=4
                i64.store align=4
                local.get 4
                local.get 5
                i64.load offset=8 align=4
                i64.store offset=8 align=4
                local.get 4
                i32.const 16
                i32.add
                local.set 4
                local.get 5
                i32.const 16
                i32.add
                local.set 5
                local.get 1
                local.set 3
              end
              local.get 1
              i32.const 16
              i32.lt_u
              br_if 1 (;@4;)
              loop  ;; label = @6
                local.get 4
                local.get 5
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 8
                i32.add
                local.get 5
                i32.const 8
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 16
                i32.add
                local.get 5
                i32.const 16
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 24
                i32.add
                local.get 5
                i32.const 24
                i32.add
                i64.load align=4
                i64.store align=4
                local.get 4
                i32.const 32
                i32.add
                local.set 4
                local.get 5
                i32.const 32
                i32.add
                local.set 5
                local.get 3
                i32.const -32
                i32.add
                local.tee 3
                i32.const 15
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 3
            local.set 1
          end
          block  ;; label = @4
            local.get 1
            i32.const 8
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 4
            i32.const 8
            i32.add
            local.set 4
          end
          block  ;; label = @4
            local.get 1
            i32.const 4
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.load
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.set 5
            local.get 4
            i32.const 4
            i32.add
            local.set 4
          end
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.load16_u align=1
            i32.store16 align=1
            local.get 4
            i32.const 2
            i32.add
            local.set 4
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 1
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          i32.const 32
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const -1
                i32.add
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              local.get 4
              local.get 5
              i32.load
              local.tee 6
              i32.store8
              local.get 4
              local.get 6
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get 4
              local.get 6
              i32.const 8
              i32.shr_u
              i32.store8 offset=1
              local.get 3
              i32.const -3
              i32.add
              local.set 3
              local.get 4
              i32.const 3
              i32.add
              local.set 7
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 7
                local.get 1
                i32.add
                local.tee 4
                local.get 5
                local.get 1
                i32.add
                local.tee 2
                i32.const 4
                i32.add
                i32.load
                local.tee 8
                i32.const 8
                i32.shl
                local.get 6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 4
                i32.add
                local.get 2
                i32.const 8
                i32.add
                i32.load
                local.tee 6
                i32.const 8
                i32.shl
                local.get 8
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 8
                i32.add
                local.get 2
                i32.const 12
                i32.add
                i32.load
                local.tee 8
                i32.const 8
                i32.shl
                local.get 6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 4
                i32.const 12
                i32.add
                local.get 2
                i32.const 16
                i32.add
                i32.load
                local.tee 6
                i32.const 8
                i32.shl
                local.get 8
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 3
                i32.const -16
                i32.add
                local.tee 3
                i32.const 16
                i32.gt_u
                br_if 0 (;@6;)
              end
              local.get 7
              local.get 1
              i32.add
              local.set 4
              local.get 5
              local.get 1
              i32.add
              i32.const 3
              i32.add
              local.set 5
              br 2 (;@3;)
            end
            local.get 4
            local.get 5
            i32.load
            local.tee 6
            i32.store16 align=1
            local.get 3
            i32.const -2
            i32.add
            local.set 3
            local.get 4
            i32.const 2
            i32.add
            local.set 7
            i32.const 0
            local.set 1
            loop  ;; label = @5
              local.get 7
              local.get 1
              i32.add
              local.tee 4
              local.get 5
              local.get 1
              i32.add
              local.tee 2
              i32.const 4
              i32.add
              i32.load
              local.tee 8
              i32.const 16
              i32.shl
              local.get 6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 4
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i32.load
              local.tee 6
              i32.const 16
              i32.shl
              local.get 8
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 8
              i32.add
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 8
              i32.const 16
              i32.shl
              local.get 6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 12
              i32.add
              local.get 2
              i32.const 16
              i32.add
              i32.load
              local.tee 6
              i32.const 16
              i32.shl
              local.get 8
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 3
              i32.const -16
              i32.add
              local.tee 3
              i32.const 17
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 1
            i32.add
            local.set 4
            local.get 5
            local.get 1
            i32.add
            i32.const 2
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          local.get 5
          i32.load
          local.tee 6
          i32.store8
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          local.get 4
          i32.const 1
          i32.add
          local.set 7
          i32.const 0
          local.set 1
          loop  ;; label = @4
            local.get 7
            local.get 1
            i32.add
            local.tee 4
            local.get 5
            local.get 1
            i32.add
            local.tee 2
            i32.const 4
            i32.add
            i32.load
            local.tee 8
            i32.const 24
            i32.shl
            local.get 6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 4
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 6
            i32.const 24
            i32.shl
            local.get 8
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 8
            i32.add
            local.get 2
            i32.const 12
            i32.add
            i32.load
            local.tee 8
            i32.const 24
            i32.shl
            local.get 6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 12
            i32.add
            local.get 2
            i32.const 16
            i32.add
            i32.load
            local.tee 6
            i32.const 24
            i32.shl
            local.get 8
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 3
            i32.const -16
            i32.add
            local.tee 3
            i32.const 18
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 1
          i32.add
          local.set 4
          local.get 5
          local.get 1
          i32.add
          i32.const 1
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load8_u
          i32.store8
          local.get 4
          local.get 5
          i32.load offset=1 align=1
          i32.store offset=1 align=1
          local.get 4
          local.get 5
          i64.load offset=5 align=1
          i64.store offset=5 align=1
          local.get 4
          local.get 5
          i32.load16_u offset=13 align=1
          i32.store16 offset=13 align=1
          local.get 4
          local.get 5
          i32.load8_u offset=15
          i32.store8 offset=15
          local.get 4
          i32.const 16
          i32.add
          local.set 4
          local.get 5
          i32.const 16
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i64.load align=1
          i64.store align=1
          local.get 4
          i32.const 8
          i32.add
          local.set 4
          local.get 5
          i32.const 8
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load align=1
          i32.store align=1
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 5
          i32.const 4
          i32.add
          local.set 5
        end
        block  ;; label = @3
          local.get 3
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const 2
          i32.add
          local.set 4
          local.get 5
          i32.const 2
          i32.add
          local.set 5
        end
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 4
      local.get 5
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $memcmp (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (func $strncmp (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u
          local.tee 5
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 255
          i32.and
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.load8_u
        local.set 4
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 255
    i32.and
    local.get 1
    i32.load8_u
    i32.sub)
  (func $memset (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 24
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 16
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $dummy.1 (type 2) (param i32 i32) (result i32)
    local.get 0)
  (func $__lctrans (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $dummy.1)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h33a07471e485547fE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17ha5b91a35c0c4d048E
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17he2a0bccdc0531bc7E
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hfea2dbbbadc4d858E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h831c4cf959d207b3E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h5845731b1bb89d06E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b861c5d7ba64f62E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17ha5b91a35c0c4d048E
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17he2a0bccdc0531bc7E
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17ha5c985520a399f6fE
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h4359cce33b80e0ddE
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h0a1c539cc93c96c3E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc686cc63e799c6cfE (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 0
    i32.const 8
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.load
    local.set 0
    local.get 2
    local.get 1
    call $_ZN4core3fmt9Formatter10debug_list17h0e48dd2248fc82ffE
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.const 1121724
        call $_ZN4core3fmt8builders8DebugSet5entry17hed6d9de6fe974c64E
        drop
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN4core3fmt8builders9DebugList6finish17h0a9e62395f87fa74E
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h8a13689143c47a7fE (type 1) (param i32))
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h39e42d1ce93941e2E (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.add
        local.tee 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        i32.const 1
        i32.shl
        local.tee 4
        local.get 2
        local.get 4
        local.get 2
        i32.gt_u
        select
        local.tee 2
        i32.const 8
        local.get 2
        i32.const 8
        i32.gt_u
        select
        local.tee 2
        i32.const -1
        i32.xor
        i32.const 31
        i32.shr_u
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.store offset=24
            local.get 3
            local.get 1
            i32.store offset=20
            local.get 3
            local.get 0
            i32.load
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.store offset=24
        end
        local.get 3
        local.get 2
        local.get 4
        local.get 3
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17hb1083d6ddf7c6bc9E
        local.get 3
        i32.load offset=4
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.load
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 2
          i32.store
          br 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.const -2147483647
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc7raw_vec11finish_grow17hb1083d6ddf7c6bc9E (type 12) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 3
                    i32.load offset=8
                    br_if 1 (;@7;)
                    local.get 1
                    br_if 2 (;@6;)
                    i32.const 1
                    local.set 2
                    br 4 (;@4;)
                  end
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 0
                  i32.store
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  local.get 3
                  i32.load offset=4
                  local.tee 2
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 1
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 2
                    br 4 (;@4;)
                  end
                  local.get 1
                  i32.const 1
                  call $__rust_alloc
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 3
                i32.load
                local.get 2
                i32.const 1
                local.get 1
                call $__rust_realloc
                local.set 2
                br 1 (;@5;)
              end
              local.get 1
              i32.const 1
              call $__rust_alloc
              local.set 2
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 2
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          i32.store
          local.get 0
          i32.const 0
          i32.store
          return
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        i32.const 1
        i32.store
        local.get 0
        i32.const 1
        i32.store
        return
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 0
      i32.store
    end
    local.get 0
    i32.const 1
    i32.store)
  (func $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error8rt_error17h316bdfe2adc12e42E
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1121740
    i32.store offset=24
    local.get 0
    i64.const 1
    i64.store offset=12 align=4
    local.get 0
    i32.const 1121788
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1121796
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hda51649750133089E (type 4) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 3
        i32.const 1
        i32.shl
        local.tee 4
        local.get 1
        local.get 4
        local.get 1
        i32.gt_u
        select
        local.tee 1
        i32.const 8
        local.get 1
        i32.const 8
        i32.gt_u
        select
        local.tee 1
        i32.const -1
        i32.xor
        i32.const 31
        i32.shr_u
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 1
            i32.store offset=24
            local.get 2
            local.get 3
            i32.store offset=20
            local.get 2
            local.get 0
            i32.load
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 2
          i32.const 0
          i32.store offset=24
        end
        local.get 2
        local.get 1
        local.get 4
        local.get 2
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17hb1083d6ddf7c6bc9E
        local.get 2
        i32.load offset=4
        local.set 3
        block  ;; label = @3
          local.get 2
          i32.load
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 1
          i32.store
          br 2 (;@1;)
        end
        local.get 2
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.const -2147483647
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc5alloc18handle_alloc_error8rt_error17h316bdfe2adc12e42E (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call $__rust_alloc_error_handler
    unreachable)
  (func $_ZN81_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h626d82938c781d77E (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 1
              i32.add
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.const -1
              i32.le_s
              br_if 1 (;@4;)
              local.get 4
              i32.const 1
              call $__rust_alloc
              local.tee 5
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              i32.const 0
              i32.store offset=24
              local.get 3
              local.get 4
              i32.store offset=20
              local.get 3
              local.get 5
              i32.store offset=16
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 16
                    i32.add
                    i32.const 0
                    local.get 2
                    call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h39e42d1ce93941e2E
                    local.get 3
                    i32.load offset=16
                    local.get 3
                    i32.load offset=24
                    local.tee 4
                    i32.add
                    local.get 1
                    local.get 2
                    call $memcpy
                    drop
                    local.get 3
                    local.get 4
                    local.get 2
                    i32.add
                    i32.store offset=24
                    br 1 (;@7;)
                  end
                  local.get 5
                  local.get 1
                  local.get 2
                  call $memcpy
                  drop
                  local.get 3
                  local.get 2
                  i32.store offset=24
                  local.get 2
                  i32.const 8
                  i32.lt_u
                  br_if 1 (;@6;)
                end
                local.get 3
                i32.const 8
                i32.add
                i32.const 0
                local.get 1
                local.get 2
                call $_ZN4core5slice6memchr14memchr_aligned17h9d109a5f802bf75dE
                local.get 3
                i32.load offset=12
                local.set 5
                local.get 3
                i32.load offset=8
                local.set 4
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 2
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                i32.const 0
                local.set 4
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 1
                i32.load8_u
                br_if 0 (;@6;)
                i32.const 1
                local.set 4
                i32.const 0
                local.set 5
                br 5 (;@1;)
              end
              i32.const 1
              local.set 4
              local.get 2
              i32.const 1
              i32.eq
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 1
                i32.load8_u offset=1
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                br 5 (;@1;)
              end
              i32.const 2
              local.set 5
              local.get 2
              i32.const 2
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=2
              i32.eqz
              br_if 4 (;@1;)
              i32.const 3
              local.set 5
              local.get 2
              i32.const 3
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=3
              i32.eqz
              br_if 4 (;@1;)
              i32.const 4
              local.set 5
              local.get 2
              i32.const 4
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=4
              i32.eqz
              br_if 4 (;@1;)
              i32.const 5
              local.set 5
              local.get 2
              i32.const 5
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=5
              i32.eqz
              br_if 4 (;@1;)
              local.get 2
              i32.const 6
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              i32.const 6
              local.get 1
              i32.load8_u offset=6
              local.tee 4
              select
              local.set 5
              local.get 4
              i32.eqz
              local.set 4
              br 4 (;@1;)
            end
            i32.const 1121812
            i32.const 43
            i32.const 1121888
            call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
            unreachable
          end
          call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
          unreachable
        end
        local.get 4
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
        unreachable
      end
      local.get 2
      local.set 5
      i32.const 0
      local.set 4
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        local.get 3
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 3
        i64.load offset=16
        i64.store offset=32
        local.get 3
        local.get 3
        i32.const 32
        i32.add
        call $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h5f54e2284a7dcb96E
        local.get 0
        local.get 3
        i64.load
        i64.store offset=8 align=4
        local.get 0
        i32.const 0
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i64.load offset=16
      i64.store offset=4 align=4
      local.get 0
      local.get 5
      i32.store
      local.get 0
      i32.const 12
      i32.add
      local.get 3
      i32.const 24
      i32.add
      i32.load
      i32.store
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h5f54e2284a7dcb96E (type 4) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 3
              local.get 1
              i32.load offset=8
              local.tee 4
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.const 1
              i32.add
              local.tee 3
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              i32.const -1
              i32.xor
              i32.const 31
              i32.shr_u
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 1
                  i32.store offset=24
                  local.get 2
                  local.get 4
                  i32.store offset=20
                  local.get 2
                  local.get 1
                  i32.load
                  i32.store offset=16
                  br 1 (;@6;)
                end
                local.get 2
                i32.const 0
                i32.store offset=24
              end
              local.get 2
              local.get 3
              local.get 5
              local.get 2
              i32.const 16
              i32.add
              call $_ZN5alloc7raw_vec11finish_grow17hb1083d6ddf7c6bc9E
              local.get 2
              i32.load offset=4
              local.set 5
              local.get 2
              i32.load
              br_if 1 (;@4;)
              local.get 1
              local.get 5
              i32.store
              local.get 1
              i32.const 4
              i32.add
              local.get 3
              i32.store
            end
            local.get 4
            local.get 3
            i32.ne
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.tee 3
          i32.const -2147483647
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
        unreachable
      end
      local.get 1
      local.get 4
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hda51649750133089E
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.set 3
      local.get 1
      i32.load offset=8
      local.set 4
    end
    local.get 1
    local.get 4
    i32.const 1
    i32.add
    local.tee 5
    i32.store offset=8
    local.get 1
    i32.load
    local.tee 1
    local.get 4
    i32.add
    i32.const 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 5
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.set 4
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 5
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          local.get 1
          local.get 3
          i32.const 1
          call $__rust_dealloc
          br 1 (;@2;)
        end
        local.get 1
        local.get 3
        i32.const 1
        local.get 5
        call $__rust_realloc
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
    unreachable)
  (func $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h2748fc54cbeafbadE (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 1
              i32.add
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.const -1
              i32.le_s
              br_if 1 (;@4;)
              local.get 4
              i32.const 1
              call $__rust_alloc
              local.tee 5
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              i32.const 0
              i32.store offset=24
              local.get 3
              local.get 4
              i32.store offset=20
              local.get 3
              local.get 5
              i32.store offset=16
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 16
                    i32.add
                    i32.const 0
                    local.get 2
                    call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h39e42d1ce93941e2E
                    local.get 3
                    i32.load offset=16
                    local.get 3
                    i32.load offset=24
                    local.tee 4
                    i32.add
                    local.get 1
                    local.get 2
                    call $memcpy
                    drop
                    local.get 3
                    local.get 4
                    local.get 2
                    i32.add
                    i32.store offset=24
                    br 1 (;@7;)
                  end
                  local.get 5
                  local.get 1
                  local.get 2
                  call $memcpy
                  drop
                  local.get 3
                  local.get 2
                  i32.store offset=24
                  local.get 2
                  i32.const 8
                  i32.lt_u
                  br_if 1 (;@6;)
                end
                local.get 3
                i32.const 8
                i32.add
                i32.const 0
                local.get 1
                local.get 2
                call $_ZN4core5slice6memchr14memchr_aligned17h9d109a5f802bf75dE
                local.get 3
                i32.load offset=12
                local.set 5
                local.get 3
                i32.load offset=8
                local.set 4
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 2
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                i32.const 0
                local.set 4
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 1
                i32.load8_u
                br_if 0 (;@6;)
                i32.const 1
                local.set 4
                i32.const 0
                local.set 5
                br 5 (;@1;)
              end
              i32.const 1
              local.set 4
              local.get 2
              i32.const 1
              i32.eq
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 1
                i32.load8_u offset=1
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                br 5 (;@1;)
              end
              i32.const 2
              local.set 5
              local.get 2
              i32.const 2
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=2
              i32.eqz
              br_if 4 (;@1;)
              i32.const 3
              local.set 5
              local.get 2
              i32.const 3
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=3
              i32.eqz
              br_if 4 (;@1;)
              i32.const 4
              local.set 5
              local.get 2
              i32.const 4
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=4
              i32.eqz
              br_if 4 (;@1;)
              i32.const 5
              local.set 5
              local.get 2
              i32.const 5
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=5
              i32.eqz
              br_if 4 (;@1;)
              local.get 2
              i32.const 6
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              i32.const 6
              local.get 1
              i32.load8_u offset=6
              local.tee 4
              select
              local.set 5
              local.get 4
              i32.eqz
              local.set 4
              br 4 (;@1;)
            end
            i32.const 1121812
            i32.const 43
            i32.const 1121904
            call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
            unreachable
          end
          call $_ZN5alloc7raw_vec17capacity_overflow17hce4b11df030a6acaE
          unreachable
        end
        local.get 4
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h20dfc42978f2515bE
        unreachable
      end
      local.get 2
      local.set 5
      i32.const 0
      local.set 4
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        local.get 3
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 3
        i64.load offset=16
        i64.store offset=32
        local.get 3
        local.get 3
        i32.const 32
        i32.add
        call $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h5f54e2284a7dcb96E
        local.get 0
        local.get 3
        i64.load
        i64.store offset=8 align=4
        local.get 0
        i32.const 0
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i64.load offset=16
      i64.store offset=4 align=4
      local.get 0
      local.get 5
      i32.store
      local.get 0
      i32.const 12
      i32.add
      local.get 3
      i32.const 24
      i32.add
      i32.load
      i32.store
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc6string13FromUtf8Error10into_bytes17haa9474c013282de1E (type 4) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store)
  (func $_ZN64_$LT$alloc..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d9e4b0fa6470c84E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 1121920
    i32.const 8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1121928
    local.get 2
    i32.const 12
    i32.add
    i32.const 1121944
    call $_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hc06c943f14e6cf7aE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3ops8function6FnOnce9call_once17hfb24ef3b18ab4e9eE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop (result i32)  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h9c1ce05c02eebb6dE (type 1) (param i32))
  (func $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1
    i32.store8 offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    i32.const 1122156
    i32.store offset=12
    local.get 2
    i32.const 1121960
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core9panicking18panic_bounds_check17h3cb110ec612eb24cE (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 17
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1122080
    i32.store offset=8
    local.get 3
    i32.const 17
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN4core5slice5index29slice_start_index_len_fail_rt17h596ff47fa7d1ab93E
    unreachable)
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h76f0ffa9e366375aE (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN4core5slice5index27slice_end_index_len_fail_rt17h8e17a4d6ed391352E
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17hd0227a3cebb524c8E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=16
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 4
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          i32.add
          local.set 5
          local.get 0
          i32.const 20
          i32.add
          i32.load
          i32.const 1
          i32.add
          local.set 6
          i32.const 0
          local.set 7
          local.get 1
          local.set 8
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              local.set 3
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              local.get 5
              i32.eq
              br_if 2 (;@3;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load8_s
                  local.tee 9
                  i32.const -1
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 9
                  i32.const 255
                  i32.and
                  local.set 9
                  br 1 (;@6;)
                end
                local.get 3
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set 8
                local.get 9
                i32.const 31
                i32.and
                local.set 10
                block  ;; label = @7
                  local.get 9
                  i32.const -33
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 10
                  i32.const 6
                  i32.shl
                  local.get 8
                  i32.or
                  local.set 9
                  local.get 3
                  i32.const 2
                  i32.add
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 8
                i32.const 6
                i32.shl
                local.get 3
                i32.load8_u offset=2
                i32.const 63
                i32.and
                i32.or
                local.set 8
                block  ;; label = @7
                  local.get 9
                  i32.const -16
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 10
                  i32.const 12
                  i32.shl
                  i32.or
                  local.set 9
                  local.get 3
                  i32.const 3
                  i32.add
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 8
                i32.const 6
                i32.shl
                local.get 3
                i32.load8_u offset=3
                i32.const 63
                i32.and
                i32.or
                local.get 10
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                i32.or
                local.tee 9
                i32.const 1114112
                i32.eq
                br_if 3 (;@3;)
                local.get 3
                i32.const 4
                i32.add
                local.set 8
              end
              local.get 7
              local.get 3
              i32.sub
              local.get 8
              i32.add
              local.set 7
              local.get 9
              i32.const 1114112
              i32.ne
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 3
          local.get 5
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.load8_s
            local.tee 8
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            local.get 8
            i32.const -32
            i32.lt_u
            br_if 0 (;@4;)
            local.get 8
            i32.const -16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.load8_u offset=2
            i32.const 63
            i32.and
            i32.const 6
            i32.shl
            local.get 3
            i32.load8_u offset=1
            i32.const 63
            i32.and
            i32.const 12
            i32.shl
            i32.or
            local.get 3
            i32.load8_u offset=3
            i32.const 63
            i32.and
            i32.or
            local.get 8
            i32.const 255
            i32.and
            i32.const 18
            i32.shl
            i32.const 1835008
            i32.and
            i32.or
            i32.const 1114112
            i32.eq
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 7
                local.get 2
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                local.get 7
                local.get 2
                i32.eq
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 0
              local.set 3
              local.get 1
              local.get 7
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if 1 (;@4;)
            end
            local.get 1
            local.set 3
          end
          local.get 7
          local.get 2
          local.get 3
          select
          local.set 2
          local.get 3
          local.get 1
          local.get 3
          select
          local.set 1
        end
        block  ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 2
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          return
        end
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            call $_ZN4core3str5count14do_count_chars17h177b3b0142ce1980E
            local.set 8
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            i32.const 0
            local.set 8
            br 1 (;@3;)
          end
          local.get 2
          i32.const 3
          i32.and
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const -1
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 8
              local.get 1
              local.set 3
              br 1 (;@4;)
            end
            local.get 2
            i32.const -4
            i32.and
            local.set 6
            i32.const 0
            local.set 8
            local.get 1
            local.set 3
            loop  ;; label = @5
              local.get 8
              local.get 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=3
              i32.const -65
              i32.gt_s
              i32.add
              local.set 8
              local.get 3
              i32.const 4
              i32.add
              local.set 3
              local.get 6
              i32.const -4
              i32.add
              local.tee 6
              br_if 0 (;@5;)
            end
          end
          local.get 9
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 8
            local.get 3
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 8
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 9
            i32.const -1
            i32.add
            local.tee 9
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 7
          local.get 8
          i32.le_u
          br_if 0 (;@3;)
          local.get 7
          local.get 8
          i32.sub
          local.tee 8
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                local.get 0
                i32.load8_u offset=32
                local.tee 3
                local.get 3
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                local.tee 3
                br_table 2 (;@4;) 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              i32.const 0
              local.set 7
              local.get 8
              local.set 3
              br 1 (;@4;)
            end
            local.get 8
            i32.const 1
            i32.shr_u
            local.set 3
            local.get 8
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 7
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 0
          i32.const 28
          i32.add
          i32.load
          local.set 9
          local.get 0
          i32.const 24
          i32.add
          i32.load
          local.set 6
          local.get 0
          i32.load offset=4
          local.set 8
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              i32.eqz
              br_if 1 (;@4;)
              local.get 6
              local.get 8
              local.get 9
              i32.load offset=16
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 1
            return
          end
          i32.const 1
          local.set 3
          local.get 8
          i32.const 1114112
          i32.eq
          br_if 2 (;@1;)
          local.get 6
          local.get 1
          local.get 2
          local.get 9
          i32.load offset=12
          call_indirect (type 7)
          br_if 2 (;@1;)
          i32.const 0
          local.set 3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 7
              local.get 3
              i32.ne
              br_if 0 (;@5;)
              local.get 7
              local.get 7
              i32.lt_u
              return
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 6
            local.get 8
            local.get 9
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const -1
          i32.add
          local.get 7
          i32.lt_u
          return
        end
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        return
      end
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      local.set 3
    end
    local.get 3)
  (func $_ZN4core9panicking5panic17he29c10572c6dc9a1E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1121960
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN4core5slice5index22slice_index_order_fail17h4a60c1a53ce9ceb9E (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN4core5slice5index25slice_index_order_fail_rt17hc8b2bd1ec1abef84E
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hfea2dbbbadc4d858E (type 2) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h80ae74444143944fE)
  (func $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hddf26c9c1c8c2de2E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 0
              i64.load32_u
              i32.const 1
              local.get 1
              call $_ZN4core3fmt3num3imp7fmt_u6417h80ae74444143944fE
              local.set 0
              br 4 (;@1;)
            end
            local.get 0
            i32.load
            local.set 0
            i32.const 0
            local.set 3
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 87
              local.get 0
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 0
              i32.const 15
              i32.gt_u
              local.set 4
              local.get 0
              i32.const 4
              i32.shr_u
              local.set 0
              local.get 4
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 128
            i32.add
            local.tee 0
            i32.const 129
            i32.ge_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 1
            i32.const 1122464
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          i32.load
          local.set 0
          i32.const 0
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            i32.const 127
            i32.add
            i32.const 48
            i32.const 55
            local.get 0
            i32.const 15
            i32.and
            local.tee 4
            i32.const 10
            i32.lt_u
            select
            local.get 4
            i32.add
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 15
            i32.gt_u
            local.set 4
            local.get 0
            i32.const 4
            i32.shr_u
            local.set 0
            local.get 4
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 128
          i32.add
          local.tee 0
          i32.const 129
          i32.ge_u
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.const 1122464
          i32.const 2
          local.get 2
          local.get 3
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 3
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.const 128
        i32.const 1122448
        call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
        unreachable
      end
      local.get 0
      i32.const 128
      i32.const 1122448
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt5write17h5b57237fcc58ee88E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=40
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 5
            br_if 0 (;@4;)
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.tee 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=16
            local.set 1
            local.get 0
            i32.const 3
            i32.shl
            local.set 6
            local.get 0
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.set 4
            local.get 2
            i32.load
            local.set 0
            loop  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=32
                local.get 0
                i32.load
                local.get 7
                local.get 3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 7)
                br_if 4 (;@2;)
              end
              local.get 1
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 1
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 2)
              br_if 3 (;@2;)
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 6
              i32.const -8
              i32.add
              local.tee 6
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 2
          i32.const 12
          i32.add
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 5
          i32.shl
          local.set 8
          local.get 1
          i32.const -1
          i32.add
          i32.const 134217727
          i32.and
          i32.const 1
          i32.add
          local.set 4
          local.get 2
          i32.load
          local.set 0
          i32.const 0
          local.set 6
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=32
              local.get 0
              i32.load
              local.get 1
              local.get 3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type 7)
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 5
            local.get 6
            i32.add
            local.tee 1
            i32.const 28
            i32.add
            i32.load8_u
            i32.store8 offset=40
            local.get 3
            local.get 1
            i32.const 4
            i32.add
            i64.load align=4
            i64.const 32
            i64.rotl
            i64.store offset=8
            local.get 1
            i32.const 24
            i32.add
            i32.load
            local.set 9
            local.get 2
            i32.load offset=16
            local.set 10
            i32.const 0
            local.set 11
            i32.const 0
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 20
                  i32.add
                  i32.load
                  br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 9
                i32.const 3
                i32.shl
                local.set 12
                i32.const 0
                local.set 7
                local.get 10
                local.get 12
                i32.add
                local.tee 12
                i32.const 4
                i32.add
                i32.load
                i32.const 91
                i32.ne
                br_if 1 (;@5;)
                local.get 12
                i32.load
                i32.load
                local.set 9
              end
              i32.const 1
              local.set 7
            end
            local.get 3
            local.get 9
            i32.store offset=20
            local.get 3
            local.get 7
            i32.store offset=16
            local.get 1
            i32.const 16
            i32.add
            i32.load
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 12
                  i32.add
                  i32.load
                  br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 7
                i32.const 3
                i32.shl
                local.set 9
                local.get 10
                local.get 9
                i32.add
                local.tee 9
                i32.const 4
                i32.add
                i32.load
                i32.const 91
                i32.ne
                br_if 1 (;@5;)
                local.get 9
                i32.load
                i32.load
                local.set 7
              end
              i32.const 1
              local.set 11
            end
            local.get 3
            local.get 7
            i32.store offset=28
            local.get 3
            local.get 11
            i32.store offset=24
            local.get 10
            local.get 1
            i32.load
            i32.const 3
            i32.shl
            i32.add
            local.tee 1
            i32.load
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.load offset=4
            call_indirect (type 2)
            br_if 2 (;@2;)
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            local.get 8
            local.get 6
            i32.const 32
            i32.add
            local.tee 6
            i32.ne
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 4
          local.get 2
          i32.load offset=4
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=32
          local.get 2
          i32.load
          local.get 4
          i32.const 3
          i32.shl
          i32.add
          local.tee 1
          i32.load
          local.get 1
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 7)
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.set 1
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h432d281245c05e16E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hddf26c9c1c8c2de2E
      br_if 0 (;@1;)
      local.get 1
      i32.const 28
      i32.add
      i32.load
      local.set 4
      local.get 1
      i32.load offset=24
      local.set 5
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i32.const 1121960
      i32.store offset=24
      local.get 2
      i64.const 1
      i64.store offset=12 align=4
      local.get 2
      i32.const 1122008
      i32.store offset=8
      local.get 5
      local.get 4
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h5b57237fcc58ee88E
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      call $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hddf26c9c1c8c2de2E
      local.set 3
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h4a85ec1361a08e55E (type 3) (param i32) (result i64)
    i64.const 1667325804462301130)
  (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f99ef5d1bfbf506E (type 2) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 1122016
    i32.const 14
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7))
  (func $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17hdb0207568f273009E (type 5) (param i32) (result i32)
    local.get 0
    call $strlen)
  (func $_ZN4core5slice6memchr14memchr_aligned17h9d109a5f802bf75dE (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 4
            local.get 2
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.sub
            local.tee 4
            local.get 3
            local.get 4
            local.get 3
            i32.lt_u
            select
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            local.get 1
            i32.const 255
            i32.and
            local.set 6
            i32.const 1
            local.set 7
            loop  ;; label = @5
              local.get 2
              local.get 5
              i32.add
              i32.load8_u
              local.get 6
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 5
              i32.const 1
              i32.add
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 4
            local.get 3
            i32.const -8
            i32.add
            local.tee 8
            i32.gt_u
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 3
          i32.const -8
          i32.add
          local.set 8
          i32.const 0
          local.set 4
        end
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            local.get 4
            i32.add
            local.tee 7
            i32.load
            local.get 5
            i32.xor
            local.tee 6
            i32.const -1
            i32.xor
            local.get 6
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 1 (;@3;)
            local.get 7
            i32.const 4
            i32.add
            i32.load
            local.get 5
            i32.xor
            local.tee 6
            i32.const -1
            i32.xor
            local.get 6
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 1 (;@3;)
            local.get 4
            i32.const 8
            i32.add
            local.tee 4
            local.get 8
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 4
        local.get 3
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        local.get 3
        i32.const 1122792
        call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
        unreachable
      end
      i32.const 0
      local.set 7
      block  ;; label = @2
        local.get 4
        local.get 3
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        local.set 5
        loop  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 4
            i32.add
            i32.load8_u
            local.get 5
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            local.set 5
            i32.const 1
            local.set 7
            br 3 (;@1;)
          end
          local.get 3
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 3
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store)
  (func $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hec61a4c7670b444bE (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 8
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        i32.const 0
        local.get 1
        local.get 2
        call $_ZN4core5slice6memchr14memchr_aligned17h9d109a5f802bf75dE
        local.get 3
        i32.load offset=12
        local.set 4
        local.get 3
        i32.load offset=8
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        i32.const 0
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.load8_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 5
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.load8_u offset=1
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          br 2 (;@1;)
        end
        i32.const 2
        local.set 4
        local.get 2
        i32.const 2
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=2
        i32.eqz
        br_if 1 (;@1;)
        i32.const 3
        local.set 4
        local.get 2
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=3
        i32.eqz
        br_if 1 (;@1;)
        i32.const 4
        local.set 4
        local.get 2
        i32.const 4
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=4
        i32.eqz
        br_if 1 (;@1;)
        i32.const 5
        local.set 4
        local.get 2
        i32.const 5
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=5
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.set 4
        i32.const 0
        local.set 5
        local.get 2
        i32.const 6
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        i32.const 6
        local.get 1
        i32.load8_u offset=6
        local.tee 5
        select
        local.set 4
        local.get 5
        i32.eqz
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      local.set 4
      i32.const 0
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        local.get 0
        i32.const 1
        i32.store offset=4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.const 1
        i32.add
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        local.get 4
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      i32.store
      i32.const 0
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3str8converts9from_utf817h20170b44b7a24c68E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.const -7
      i32.add
      local.tee 3
      local.get 3
      local.get 2
      i32.gt_u
      select
      local.set 4
      local.get 1
      i32.const 3
      i32.add
      i32.const -4
      i32.and
      local.get 1
      i32.sub
      local.set 5
      i32.const 0
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            local.get 3
                            i32.add
                            i32.load8_u
                            local.tee 6
                            i32.const 24
                            i32.shl
                            i32.const 24
                            i32.shr_s
                            local.tee 7
                            i32.const 0
                            i32.lt_s
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const -1
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 5
                            local.get 3
                            i32.sub
                            i32.const 3
                            i32.and
                            br_if 1 (;@11;)
                            local.get 3
                            local.get 4
                            i32.lt_u
                            br_if 2 (;@10;)
                            br 8 (;@4;)
                          end
                          i32.const 1
                          local.set 8
                          i32.const 1
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 6
                                          i32.const 1122992
                                          i32.add
                                          i32.load8_u
                                          i32.const -2
                                          i32.add
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 14 (;@5;)
                                        end
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        local.tee 6
                                        local.get 2
                                        i32.lt_u
                                        br_if 6 (;@12;)
                                        i32.const 0
                                        local.set 9
                                        br 13 (;@5;)
                                      end
                                      i32.const 1
                                      local.set 8
                                      i32.const 0
                                      local.set 9
                                      local.get 3
                                      i32.const 1
                                      i32.add
                                      local.tee 10
                                      local.get 2
                                      i32.ge_u
                                      br_if 12 (;@5;)
                                      local.get 1
                                      local.get 10
                                      i32.add
                                      i32.load8_s
                                      local.set 10
                                      local.get 6
                                      i32.const -224
                                      i32.add
                                      br_table 1 (;@16;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 2 (;@15;) 3 (;@14;)
                                    end
                                    i32.const 1
                                    local.set 8
                                    block  ;; label = @17
                                      local.get 3
                                      i32.const 1
                                      i32.add
                                      local.tee 9
                                      local.get 2
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 9
                                      br 12 (;@5;)
                                    end
                                    local.get 1
                                    local.get 9
                                    i32.add
                                    i32.load8_s
                                    local.set 10
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 6
                                          i32.const -240
                                          i32.add
                                          br_table 1 (;@18;) 0 (;@19;) 0 (;@19;) 0 (;@19;) 2 (;@17;) 0 (;@19;)
                                        end
                                        i32.const 1
                                        local.set 8
                                        block  ;; label = @19
                                          local.get 7
                                          i32.const 15
                                          i32.add
                                          i32.const 255
                                          i32.and
                                          i32.const 2
                                          i32.le_u
                                          br_if 0 (;@19;)
                                          i32.const 1
                                          local.set 9
                                          br 14 (;@5;)
                                        end
                                        local.get 10
                                        i32.const -1
                                        i32.le_s
                                        br_if 9 (;@9;)
                                        i32.const 1
                                        local.set 9
                                        br 13 (;@5;)
                                      end
                                      local.get 10
                                      i32.const 112
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 48
                                      i32.lt_u
                                      br_if 9 (;@8;)
                                      br 11 (;@6;)
                                    end
                                    local.get 10
                                    i32.const -113
                                    i32.gt_s
                                    br_if 10 (;@6;)
                                    br 8 (;@8;)
                                  end
                                  local.get 10
                                  i32.const -32
                                  i32.and
                                  i32.const -96
                                  i32.ne
                                  br_if 9 (;@6;)
                                  br 2 (;@13;)
                                end
                                local.get 10
                                i32.const -96
                                i32.ge_s
                                br_if 8 (;@6;)
                                br 1 (;@13;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 7
                                  i32.const 31
                                  i32.add
                                  i32.const 255
                                  i32.and
                                  i32.const 12
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  i32.const 1
                                  local.set 8
                                  block  ;; label = @16
                                    local.get 7
                                    i32.const -2
                                    i32.and
                                    i32.const -18
                                    i32.eq
                                    br_if 0 (;@16;)
                                    i32.const 1
                                    local.set 9
                                    br 11 (;@5;)
                                  end
                                  local.get 10
                                  i32.const -1
                                  i32.le_s
                                  br_if 1 (;@14;)
                                  i32.const 1
                                  local.set 9
                                  br 10 (;@5;)
                                end
                                local.get 10
                                i32.const -65
                                i32.gt_s
                                br_if 8 (;@6;)
                                br 1 (;@13;)
                              end
                              i32.const 1
                              local.set 9
                              local.get 10
                              i32.const -64
                              i32.ge_u
                              br_if 8 (;@5;)
                            end
                            i32.const 0
                            local.set 9
                            local.get 3
                            i32.const 2
                            i32.add
                            local.tee 6
                            local.get 2
                            i32.ge_u
                            br_if 7 (;@5;)
                            local.get 1
                            local.get 6
                            i32.add
                            i32.load8_s
                            i32.const -65
                            i32.le_s
                            br_if 5 (;@7;)
                            i32.const 1
                            local.set 9
                            i32.const 2
                            local.set 8
                            br 7 (;@5;)
                          end
                          local.get 1
                          local.get 6
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.gt_s
                          br_if 5 (;@6;)
                          br 4 (;@7;)
                        end
                        local.get 3
                        i32.const 1
                        i32.add
                        local.set 3
                        br 7 (;@3;)
                      end
                      loop  ;; label = @10
                        local.get 1
                        local.get 3
                        i32.add
                        local.tee 6
                        i32.load
                        i32.const -2139062144
                        i32.and
                        br_if 6 (;@4;)
                        local.get 6
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const -2139062144
                        i32.and
                        br_if 6 (;@4;)
                        local.get 3
                        i32.const 8
                        i32.add
                        local.tee 3
                        local.get 4
                        i32.ge_u
                        br_if 6 (;@4;)
                        br 0 (;@10;)
                      end
                    end
                    i32.const 1
                    local.set 9
                    local.get 10
                    i32.const -64
                    i32.ge_u
                    br_if 3 (;@5;)
                  end
                  block  ;; label = @8
                    local.get 3
                    i32.const 2
                    i32.add
                    local.tee 6
                    local.get 2
                    i32.lt_u
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 9
                    br 3 (;@5;)
                  end
                  block  ;; label = @8
                    local.get 1
                    local.get 6
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.le_s
                    br_if 0 (;@8;)
                    i32.const 2
                    local.set 8
                    i32.const 1
                    local.set 9
                    br 3 (;@5;)
                  end
                  i32.const 0
                  local.set 9
                  local.get 3
                  i32.const 3
                  i32.add
                  local.tee 6
                  local.get 2
                  i32.ge_u
                  br_if 2 (;@5;)
                  local.get 1
                  local.get 6
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 0 (;@7;)
                  i32.const 3
                  local.set 8
                  i32.const 1
                  local.set 9
                  br 2 (;@5;)
                end
                local.get 6
                i32.const 1
                i32.add
                local.set 3
                br 3 (;@3;)
              end
              i32.const 1
              local.set 8
              i32.const 1
              local.set 9
            end
            local.get 0
            local.get 3
            i32.store offset=4
            local.get 0
            i32.const 9
            i32.add
            local.get 8
            i32.store8
            local.get 0
            i32.const 8
            i32.add
            local.get 9
            i32.store8
            local.get 0
            i32.const 1
            i32.store
            return
          end
          local.get 3
          local.get 2
          i32.ge_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 3
            i32.add
            i32.load8_s
            i32.const 0
            i32.lt_s
            br_if 1 (;@3;)
            local.get 2
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            i32.ne
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.store
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E (type 14) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 8
        i32.load
        local.tee 9
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=24
        i32.const 1122373
        i32.const 1122375
        local.get 7
        i32.const 255
        i32.and
        local.tee 7
        select
        i32.const 2
        i32.const 3
        local.get 7
        select
        local.get 8
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=24
        i32.const 1122320
        i32.const 2
        local.get 8
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        local.get 3
        local.get 8
        local.get 4
        i32.load offset=12
        call_indirect (type 2)
        local.set 6
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 7
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=24
        i32.const 1122368
        i32.const 3
        local.get 8
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        local.set 9
      end
      i32.const 1
      local.set 6
      local.get 5
      i32.const 1
      i32.store8 offset=23
      local.get 5
      i32.const 52
      i32.add
      i32.const 1122340
      i32.store
      local.get 5
      local.get 9
      i32.store offset=24
      local.get 5
      local.get 8
      i64.load offset=24 align=4
      i64.store offset=8
      local.get 5
      local.get 5
      i32.const 23
      i32.add
      i32.store offset=16
      local.get 8
      i64.load offset=8 align=4
      local.set 10
      local.get 8
      i64.load offset=16 align=4
      local.set 11
      local.get 5
      local.get 8
      i32.load8_u offset=32
      i32.store8 offset=56
      local.get 5
      local.get 8
      i32.load offset=4
      i32.store offset=28
      local.get 5
      local.get 11
      i64.store offset=40
      local.get 5
      local.get 10
      i64.store offset=32
      local.get 5
      local.get 5
      i32.const 8
      i32.add
      i32.store offset=48
      local.get 5
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4c2165e190c05103E
      br_if 0 (;@1;)
      local.get 5
      i32.const 8
      i32.add
      i32.const 1122320
      i32.const 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4c2165e190c05103E
      br_if 0 (;@1;)
      local.get 3
      local.get 5
      i32.const 24
      i32.add
      local.get 4
      i32.load offset=12
      call_indirect (type 2)
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=48
      i32.const 1122371
      i32.const 2
      local.get 5
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 7)
      local.set 6
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 6
    i32.store8 offset=4
    local.get 5
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core6option13expect_failed17hcf804cb32a829b38E (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN4core9panicking9panic_str17h648e20c26fc8e96eE
    unreachable)
  (func $_ZN4core9panicking9panic_str17h648e20c26fc8e96eE (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking13panic_display17ha67abfb9fb0fbd0fE
    unreachable)
  (func $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h5331b1bdfe7a0ea7E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 20
    i32.add
    i32.const 17
    i32.store
    local.get 2
    i32.const 12
    i32.add
    i32.const 17
    i32.store
    local.get 2
    i32.const 92
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=16
    local.get 2
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=8
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 0
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 3
    i32.store offset=44
    local.get 2
    i64.const 3
    i64.store offset=28 align=4
    local.get 2
    i32.const 1122100
    i32.store offset=24
    local.get 2
    local.get 2
    i32.store offset=40
    local.get 1
    local.get 0
    local.get 2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 0
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hece037ae6cf5db17E (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17hd0227a3cebb524c8E)
  (func $_ZN4core5panic10panic_info9PanicInfo7payload17hf0ec7e38bd316611E (type 4) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func $_ZN4core5panic10panic_info9PanicInfo7message17hdd1e78e1f1cb73f3E (type 5) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic10panic_info9PanicInfo8location17h0f08f4a013e2f428E (type 5) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h9b064ccfe94cb169E (type 5) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=16)
  (func $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h5d216ab94188b1bfE (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      local.tee 4
      i32.const 1122124
      i32.const 12
      local.get 1
      i32.const 28
      i32.add
      i32.load
      local.tee 1
      i32.load offset=12
      call_indirect (type 7)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store offset=12
          local.get 2
          i32.const 93
          i32.store offset=20
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.store offset=16
          i32.const 1
          local.set 3
          local.get 2
          i32.const 1
          i32.store offset=60
          local.get 2
          i64.const 2
          i64.store offset=44 align=4
          local.get 2
          i32.const 1122140
          i32.store offset=40
          local.get 2
          local.get 2
          i32.const 16
          i32.add
          i32.store offset=56
          local.get 4
          local.get 1
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt5write17h5b57237fcc58ee88E
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.tee 3
        local.get 0
        i32.load offset=4
        i32.const 12
        i32.add
        i32.load
        call_indirect (type 3)
        i64.const 8378048562631854315
        i64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.store offset=12
        local.get 2
        i32.const 94
        i32.store offset=20
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.store offset=16
        i32.const 1
        local.set 3
        local.get 2
        i32.const 1
        i32.store offset=60
        local.get 2
        i64.const 2
        i64.store offset=44 align=4
        local.get 2
        i32.const 1122140
        i32.store offset=40
        local.get 2
        local.get 2
        i32.const 16
        i32.add
        i32.store offset=56
        local.get 4
        local.get 1
        local.get 2
        i32.const 40
        i32.add
        call $_ZN4core3fmt5write17h5b57237fcc58ee88E
        br_if 1 (;@1;)
      end
      local.get 0
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 36
      i32.add
      i32.const 17
      i32.store
      local.get 2
      i32.const 16
      i32.add
      i32.const 12
      i32.add
      i32.const 17
      i32.store
      local.get 2
      local.get 3
      i32.const 12
      i32.add
      i32.store offset=32
      local.get 2
      local.get 3
      i32.const 8
      i32.add
      i32.store offset=24
      local.get 2
      i32.const 92
      i32.store offset=20
      local.get 2
      local.get 3
      i32.store offset=16
      local.get 2
      i32.const 3
      i32.store offset=60
      local.get 2
      i64.const 3
      i64.store offset=44 align=4
      local.get 2
      i32.const 1122100
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 16
      i32.add
      i32.store offset=56
      local.get 4
      local.get 1
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h5b57237fcc58ee88E
      local.set 3
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f2c900d08b6885E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 1
    i32.load offset=24
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.load
    local.tee 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 4
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6b1f9540e96eab0fE (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17hd0227a3cebb524c8E)
  (func $_ZN4core9panicking13panic_display17ha67abfb9fb0fbd0fE (type 4) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 1
    i64.store offset=4 align=4
    local.get 2
    i32.const 1122172
    i32.store
    local.get 2
    i32.const 92
    i32.store offset=28
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=16
    local.get 2
    local.get 1
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN4core9panicking19assert_failed_inner17h3cf26e90bb2bb66aE (type 15) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 2
    i32.store offset=12
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 7
    local.get 4
    i32.store offset=20
    local.get 7
    local.get 3
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.and
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 7
          i32.const 1122189
          i32.store offset=24
          i32.const 2
          local.set 2
          br 2 (;@1;)
        end
        local.get 7
        i32.const 1122187
        i32.store offset=24
        i32.const 2
        local.set 2
        br 1 (;@1;)
      end
      local.get 7
      i32.const 1122180
      i32.store offset=24
      i32.const 7
      local.set 2
    end
    local.get 7
    local.get 2
    i32.store offset=28
    block  ;; label = @1
      local.get 5
      i32.load
      br_if 0 (;@1;)
      local.get 7
      i32.const 56
      i32.add
      i32.const 20
      i32.add
      i32.const 95
      i32.store
      local.get 7
      i32.const 68
      i32.add
      i32.const 95
      i32.store
      local.get 7
      i32.const 88
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 7
      i64.const 4
      i64.store offset=92 align=4
      local.get 7
      i32.const 1122288
      i32.store offset=88
      local.get 7
      i32.const 92
      i32.store offset=60
      local.get 7
      local.get 7
      i32.const 56
      i32.add
      i32.store offset=104
      local.get 7
      local.get 7
      i32.const 16
      i32.add
      i32.store offset=72
      local.get 7
      local.get 7
      i32.const 8
      i32.add
      i32.store offset=64
      local.get 7
      local.get 7
      i32.const 24
      i32.add
      i32.store offset=56
      local.get 7
      i32.const 88
      i32.add
      local.get 6
      call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
      unreachable
    end
    local.get 7
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get 5
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 7
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 7
    local.get 5
    i64.load align=4
    i64.store offset=32
    local.get 7
    i32.const 88
    i32.add
    i32.const 20
    i32.add
    i32.const 4
    i32.store
    local.get 7
    i32.const 84
    i32.add
    i32.const 10
    i32.store
    local.get 7
    i32.const 56
    i32.add
    i32.const 20
    i32.add
    i32.const 95
    i32.store
    local.get 7
    i32.const 68
    i32.add
    i32.const 95
    i32.store
    local.get 7
    i64.const 4
    i64.store offset=92 align=4
    local.get 7
    i32.const 1122252
    i32.store offset=88
    local.get 7
    i32.const 92
    i32.store offset=60
    local.get 7
    local.get 7
    i32.const 56
    i32.add
    i32.store offset=104
    local.get 7
    local.get 7
    i32.const 32
    i32.add
    i32.store offset=80
    local.get 7
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=72
    local.get 7
    local.get 7
    i32.const 8
    i32.add
    i32.store offset=64
    local.get 7
    local.get 7
    i32.const 24
    i32.add
    i32.store offset=56
    local.get 7
    i32.const 88
    i32.add
    local.get 6
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9fcb25911b8fa60E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 2))
  (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h74a99f7b85295a13E (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 1
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core6result13unwrap_failed17hd28b63676e6fa330E (type 13) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 5
    i32.const 60
    i32.add
    i32.const 95
    i32.store
    local.get 5
    i64.const 2
    i64.store offset=28 align=4
    local.get 5
    i32.const 1122324
    i32.store offset=24
    local.get 5
    i32.const 92
    i32.store offset=52
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=56
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=48
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4c2165e190c05103E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 10
    i32.store offset=40
    local.get 3
    i64.const 4294967306
    i64.store offset=32
    local.get 3
    local.get 2
    i32.store offset=28
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.set 5
    local.get 0
    i32.load
    local.set 6
    local.get 0
    i32.load offset=8
    local.set 7
    i32.const 0
    local.set 8
    i32.const 0
    local.set 9
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 9
            i32.const 255
            i32.and
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 8
              local.get 2
              i32.gt_u
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 1
                local.get 8
                i32.add
                local.set 10
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    local.get 8
                    i32.sub
                    local.tee 11
                    i32.const 8
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 10
                    local.get 10
                    local.get 11
                    call $_ZN4core5slice6memchr14memchr_aligned17h9d109a5f802bf75dE
                    local.get 3
                    i32.load offset=4
                    local.set 0
                    local.get 3
                    i32.load
                    local.set 10
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 0
                  block  ;; label = @8
                    local.get 11
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 10
                    br 1 (;@7;)
                  end
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 10
                      local.get 0
                      i32.add
                      i32.load8_u
                      i32.const 10
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 10
                      br 2 (;@7;)
                    end
                    local.get 11
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.set 10
                  local.get 11
                  local.set 0
                end
                block  ;; label = @7
                  local.get 10
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 8
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 8
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.const 1
                  i32.add
                  local.tee 8
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 2
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 0
                  i32.add
                  i32.load8_u
                  i32.const 10
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 9
                  local.get 8
                  local.set 12
                  local.get 8
                  local.set 0
                  br 4 (;@3;)
                end
                local.get 8
                local.get 2
                i32.le_u
                br_if 0 (;@6;)
              end
            end
            i32.const 1
            local.set 9
            local.get 4
            local.set 12
            local.get 2
            local.set 0
            local.get 4
            local.get 2
            i32.ne
            br_if 1 (;@3;)
          end
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 1122364
            i32.const 4
            local.get 5
            i32.load offset=12
            call_indirect (type 7)
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 4
          i32.add
          local.set 11
          local.get 0
          local.get 4
          i32.sub
          local.set 10
          i32.const 0
          local.set 13
          block  ;; label = @4
            local.get 0
            local.get 4
            i32.eq
            br_if 0 (;@4;)
            local.get 10
            local.get 11
            i32.add
            i32.const -1
            i32.add
            i32.load8_u
            i32.const 10
            i32.eq
            local.set 13
          end
          local.get 7
          local.get 13
          i32.store8
          local.get 12
          local.set 4
          local.get 6
          local.get 11
          local.get 10
          local.get 5
          i32.load offset=12
          call_indirect (type 7)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 0
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17he3f0e150ca880f7bE (type 5) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.const 5
        i32.add
        i32.load8_u
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=24
        i32.const 1122388
        i32.const 7
        local.get 3
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=24
        i32.const 1122382
        i32.const 6
        local.get 3
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 2
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      i32.const 1
      i32.store8 offset=15
      local.get 1
      local.get 3
      i64.load offset=24 align=4
      i64.store
      local.get 1
      local.get 1
      i32.const 15
      i32.add
      i32.store offset=8
      local.get 1
      i32.const 1122378
      i32.const 3
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4c2165e190c05103E
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=24
      i32.const 1122381
      i32.const 1
      local.get 3
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 7)
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store8 offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN4core3fmt8builders11DebugStruct6finish17hd859ce96505d068dE (type 5) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load8_u offset=4
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=5
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 2
      i32.const 1
      local.set 1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.load8_u
          i32.const 4
          i32.and
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=24
          i32.const 1122395
          i32.const 2
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.load offset=24
        i32.const 1122381
        i32.const 1
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store8 offset=4
    end
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt8builders10DebugTuple5field17hd9cd67be56e19918E (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=8
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.set 4
        i32.const 1
        local.set 5
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 6
        i32.load
        local.tee 7
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        local.get 6
        i32.load offset=24
        i32.const 1122373
        i32.const 1122399
        local.get 4
        select
        i32.const 2
        i32.const 1
        local.get 4
        select
        local.get 6
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        local.get 1
        local.get 6
        local.get 2
        i32.load offset=12
        call_indirect (type 2)
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 6
          i32.load offset=24
          i32.const 1122397
          i32.const 2
          local.get 6
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1
          local.set 5
          i32.const 0
          local.set 4
          br 2 (;@1;)
        end
        local.get 6
        i32.load
        local.set 7
      end
      i32.const 1
      local.set 5
      local.get 3
      i32.const 1
      i32.store8 offset=23
      local.get 3
      i32.const 52
      i32.add
      i32.const 1122340
      i32.store
      local.get 3
      local.get 7
      i32.store offset=24
      local.get 3
      local.get 6
      i64.load offset=24 align=4
      i64.store offset=8
      local.get 3
      local.get 3
      i32.const 23
      i32.add
      i32.store offset=16
      local.get 6
      i64.load offset=8 align=4
      local.set 8
      local.get 6
      i64.load offset=16 align=4
      local.set 9
      local.get 3
      local.get 6
      i32.load8_u offset=32
      i32.store8 offset=56
      local.get 3
      local.get 6
      i32.load offset=4
      i32.store offset=28
      local.get 3
      local.get 9
      i64.store offset=40
      local.get 3
      local.get 8
      i64.store offset=32
      local.get 3
      local.get 3
      i32.const 8
      i32.add
      i32.store offset=48
      local.get 1
      local.get 3
      i32.const 24
      i32.add
      local.get 2
      i32.load offset=12
      call_indirect (type 2)
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=48
      i32.const 1122371
      i32.const 2
      local.get 3
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 7)
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store8 offset=8
    local.get 0
    local.get 4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt8builders10DebugTuple6finish17h55220009ff51deecE (type 5) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load8_u offset=8
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 3
      i32.const 1
      local.set 1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.set 3
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u offset=9
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load8_u
          i32.const 4
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 3
          i32.load offset=24
          i32.const 1122400
          i32.const 1
          local.get 3
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          br_if 1 (;@2;)
        end
        local.get 3
        i32.load offset=24
        i32.const 1122003
        i32.const 1
        local.get 3
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store8 offset=8
    end
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt8builders10DebugInner5entry17h9b5b8147a662da83E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 1
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load
              local.tee 5
              i32.load
              local.tee 6
              i32.const 4
              i32.and
              br_if 0 (;@5;)
              local.get 4
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 4
            i32.const 255
            i32.and
            br_if 1 (;@3;)
            i32.const 1
            local.set 4
            local.get 5
            i32.load offset=24
            i32.const 1122401
            i32.const 1
            local.get 5
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 7)
            br_if 3 (;@1;)
            local.get 5
            i32.load
            local.set 6
            br 1 (;@3;)
          end
          i32.const 1
          local.set 4
          local.get 5
          i32.load offset=24
          i32.const 1122373
          i32.const 2
          local.get 5
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 1
        local.set 4
        local.get 3
        i32.const 1
        i32.store8 offset=23
        local.get 3
        i32.const 52
        i32.add
        i32.const 1122340
        i32.store
        local.get 3
        local.get 6
        i32.store offset=24
        local.get 3
        local.get 5
        i64.load offset=24 align=4
        i64.store offset=8
        local.get 3
        local.get 3
        i32.const 23
        i32.add
        i32.store offset=16
        local.get 5
        i64.load offset=8 align=4
        local.set 7
        local.get 5
        i64.load offset=16 align=4
        local.set 8
        local.get 3
        local.get 5
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get 3
        local.get 5
        i32.load offset=4
        i32.store offset=28
        local.get 3
        local.get 8
        i64.store offset=40
        local.get 3
        local.get 7
        i64.store offset=32
        local.get 3
        local.get 3
        i32.const 8
        i32.add
        i32.store offset=48
        local.get 1
        local.get 3
        i32.const 24
        i32.add
        local.get 2
        i32.load offset=12
        call_indirect (type 2)
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=48
        i32.const 1122371
        i32.const 2
        local.get 3
        i32.load offset=52
        i32.load offset=12
        call_indirect (type 7)
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 5
      local.get 2
      i32.load offset=12
      call_indirect (type 2)
      local.set 4
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 4
    i32.store8 offset=4
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3fmt8builders8DebugSet5entry17hed6d9de6fe974c64E (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN4core3fmt8builders10DebugInner5entry17h9b5b8147a662da83E
    local.get 0)
  (func $_ZN4core3fmt8builders9DebugList6finish17h0a9e62395f87fa74E (type 5) (param i32) (result i32)
    (local i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.tee 0
      i32.const 24
      i32.add
      i32.load
      i32.const 1122420
      i32.const 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      local.set 1
    end
    local.get 1)
  (func $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E (type 16) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 6
        i32.const 1
        i32.and
        local.tee 1
        select
        local.set 7
        local.get 1
        local.get 5
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 8
      local.get 0
      i32.load
      local.set 6
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          call $_ZN4core3str5count14do_count_chars17h177b3b0142ce1980E
          local.set 9
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 9
          br 1 (;@2;)
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 10
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 9
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.const -4
          i32.and
          local.set 11
          i32.const 0
          local.set 9
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 9
            local.get 1
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=1
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=2
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=3
            i32.const -65
            i32.gt_s
            i32.add
            local.set 9
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 11
            i32.const -4
            i32.add
            local.tee 11
            br_if 0 (;@4;)
          end
        end
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 9
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 9
      local.get 8
      i32.add
      local.set 8
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        local.get 0
        i32.const 24
        i32.add
        i32.load
        local.tee 9
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.tee 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb8c2b1ff0ade451cE
        br_if 1 (;@1;)
        local.get 9
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=12
        call_indirect (type 7)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 11
                local.get 8
                i32.le_u
                br_if 0 (;@6;)
                local.get 6
                i32.const 8
                i32.and
                br_if 4 (;@2;)
                local.get 11
                local.get 8
                i32.sub
                local.tee 9
                local.set 8
                i32.const 1
                local.get 0
                i32.load8_u offset=32
                local.tee 1
                local.get 1
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                local.tee 1
                br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              i32.const 1
              local.set 1
              local.get 0
              i32.const 24
              i32.add
              i32.load
              local.tee 9
              local.get 0
              i32.const 28
              i32.add
              i32.load
              local.tee 0
              local.get 7
              local.get 2
              local.get 3
              call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb8c2b1ff0ade451cE
              br_if 4 (;@1;)
              local.get 9
              local.get 4
              local.get 5
              local.get 0
              i32.load offset=12
              call_indirect (type 7)
              return
            end
            i32.const 0
            local.set 8
            local.get 9
            local.set 1
            br 1 (;@3;)
          end
          local.get 9
          i32.const 1
          i32.shr_u
          local.set 1
          local.get 9
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 8
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.set 10
        local.get 0
        i32.const 24
        i32.add
        i32.load
        local.set 11
        local.get 0
        i32.load offset=4
        local.set 9
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 11
            local.get 9
            local.get 10
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 1
        local.get 9
        i32.const 1114112
        i32.eq
        br_if 1 (;@1;)
        local.get 11
        local.get 10
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb8c2b1ff0ade451cE
        br_if 1 (;@1;)
        local.get 11
        local.get 4
        local.get 5
        local.get 10
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        i32.const 0
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 8
              local.set 1
              br 2 (;@3;)
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 11
            local.get 9
            local.get 10
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 1
          i32.const -1
          i32.add
          local.set 1
        end
        local.get 1
        local.get 8
        i32.lt_u
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.set 6
      local.get 0
      i32.const 48
      i32.store offset=4
      local.get 0
      i32.load8_u offset=32
      local.set 12
      i32.const 1
      local.set 1
      local.get 0
      i32.const 1
      i32.store8 offset=32
      local.get 0
      i32.const 24
      i32.add
      i32.load
      local.tee 9
      local.get 0
      i32.const 28
      i32.add
      i32.load
      local.tee 10
      local.get 7
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb8c2b1ff0ade451cE
      br_if 0 (;@1;)
      local.get 11
      local.get 8
      i32.sub
      i32.const 1
      i32.add
      local.set 1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 9
          i32.const 48
          local.get 10
          i32.load offset=16
          call_indirect (type 2)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 1
      local.get 9
      local.get 4
      local.get 5
      local.get 10
      i32.load offset=12
      call_indirect (type 7)
      br_if 0 (;@1;)
      local.get 0
      local.get 12
      i32.store8 offset=32
      local.get 0
      local.get 6
      i32.store offset=4
      i32.const 0
      return
    end
    local.get 1)
  (func $_ZN4core3fmt5Write10write_char17h7df999b3b4e00bafE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=12
            i32.const 4
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4c2165e190c05103E
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17hd6c44f7b7de919acE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1122668
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17he9cd3cbecdcc74a2E (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4c2165e190c05103E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h996d76a0633ac923E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=12
            i32.const 4
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4c2165e190c05103E
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9bf1b444a31f28c5E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1122668
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3str5count14do_count_chars17h177b3b0142ce1980E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 2
        local.get 0
        i32.sub
        local.tee 3
        local.get 1
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.sub
        local.tee 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 3
        i32.and
        local.set 5
        i32.const 0
        local.set 6
        i32.const 0
        local.set 1
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          i32.const 3
          i32.and
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 0
              i32.const -1
              i32.xor
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              local.get 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 3
            i32.const -4
            i32.and
            local.set 8
            i32.const 0
            local.set 1
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 1
              local.get 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.load8_s offset=3
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 8
              i32.const -4
              i32.add
              local.tee 8
              br_if 0 (;@5;)
            end
          end
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 7
            i32.const -1
            i32.add
            local.tee 7
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 3
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          i32.const -4
          i32.and
          i32.add
          local.tee 2
          i32.load8_s
          i32.const -65
          i32.gt_s
          local.set 6
          local.get 5
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
          local.get 5
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
        end
        local.get 4
        i32.const 2
        i32.shr_u
        local.set 3
        local.get 6
        local.get 1
        i32.add
        local.set 7
        loop  ;; label = @3
          local.get 0
          local.set 6
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 192
          local.get 3
          i32.const 192
          i32.lt_u
          select
          local.tee 4
          i32.const 3
          i32.and
          local.set 5
          local.get 4
          i32.const 2
          i32.shl
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 252
              i32.and
              local.tee 10
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 6
            local.get 10
            i32.const 2
            i32.shl
            i32.add
            local.set 8
            i32.const 0
            local.set 2
            local.get 6
            local.set 0
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 1
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 1
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 1
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 1
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 1
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 1
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.load
              local.tee 1
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 1
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              i32.add
              i32.add
              i32.add
              local.set 2
              local.get 0
              i32.const 16
              i32.add
              local.tee 0
              local.get 8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 3
          local.get 4
          i32.sub
          local.set 3
          local.get 6
          local.get 9
          i32.add
          local.set 0
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 7
          i32.add
          local.set 7
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 6
          local.get 10
          i32.const 2
          i32.shl
          i32.add
          local.set 0
          local.get 5
          i32.const -1
          i32.add
          i32.const 1073741823
          i32.and
          local.tee 2
          i32.const 1
          i32.add
          local.tee 8
          i32.const 3
          i32.and
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 3
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2147483644
            i32.and
            local.set 8
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 3
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 3
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 3
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 3
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 3
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 3
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.load
              local.tee 3
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 3
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              i32.add
              i32.add
              i32.add
              local.set 2
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 8
              i32.const -4
              i32.add
              local.tee 8
              br_if 0 (;@5;)
            end
          end
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            i32.load
            local.tee 8
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 8
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 2
            i32.add
            local.set 2
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 16711935
        i32.and
        local.get 2
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 7
        i32.add
        return
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 1
      i32.const 3
      i32.and
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          i32.const 3
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 7
          br 1 (;@2;)
        end
        local.get 1
        i32.const -4
        i32.and
        local.set 1
        i32.const 0
        local.set 7
        loop  ;; label = @3
          local.get 7
          local.get 0
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.load8_s offset=3
          i32.const -65
          i32.gt_s
          i32.add
          local.set 7
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const -4
          i32.add
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 7
        local.get 0
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 7
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 7)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hb8c2b1ff0ade451cE (type 14) (param i32 i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 5
          local.get 0
          local.get 2
          local.get 1
          i32.load offset=16
          call_indirect (type 2)
          br_if 1 (;@2;)
        end
        local.get 3
        br_if 1 (;@1;)
        i32.const 0
        local.set 5
      end
      local.get 5
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 7))
  (func $_ZN4core3str16slice_error_fail17h66f517969b297684E (type 13) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN4core3str19slice_error_fail_rt17h05c0ac6d8ceee012E
    unreachable)
  (func $_ZN4core3fmt9Formatter9write_str17h86104dc24acb14a3E (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load offset=24
    local.get 1
    local.get 2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7))
  (func $_ZN4core3fmt9Formatter9write_fmt17hc01d3a4540d781feE (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.load offset=24
    local.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 0
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h5b57237fcc58ee88E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt9Formatter15debug_lower_hex17ha5b91a35c0c4d048E (type 5) (param i32) (result i32)
    local.get 0
    i32.load8_u
    i32.const 16
    i32.and
    i32.const 4
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter15debug_upper_hex17he2a0bccdc0531bc7E (type 5) (param i32) (result i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.const 5
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter12debug_struct17h9858016b6343d693E (type 12) (param i32 i32 i32 i32)
    local.get 1
    i32.load offset=24
    local.get 2
    local.get 3
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=5
    local.get 0
    local.get 3
    i32.store8 offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h0b074b684d5f9949E (type 17) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 11
    global.set $__stack_pointer
    local.get 0
    i32.load offset=24
    local.get 1
    local.get 2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    local.set 2
    local.get 11
    i32.const 0
    i32.store8 offset=13
    local.get 11
    local.get 2
    i32.store8 offset=12
    local.get 11
    local.get 0
    i32.store offset=8
    local.get 11
    i32.const 8
    i32.add
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
    local.get 7
    local.get 8
    local.get 9
    local.get 10
    call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
    local.set 2
    local.get 11
    i32.load8_u offset=12
    local.set 0
    block  ;; label = @1
      local.get 11
      i32.load8_u offset=13
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 255
      i32.and
      local.set 1
      i32.const 1
      local.set 0
      local.get 1
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.load
        local.tee 0
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        i32.const 1122395
        i32.const 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=24
      i32.const 1122381
      i32.const 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      local.set 0
    end
    local.get 11
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt9Formatter11debug_tuple17hb2a35586ba246dbeE (type 12) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=24
    local.get 2
    local.get 3
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    i32.store8 offset=8
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.eqz
    i32.store8 offset=9
    local.get 0
    i32.const 0
    i32.store offset=4)
  (func $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h0e5f2a7fc3910ee2E (type 14) (param i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.load offset=24
    local.get 1
    local.get 2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    i32.store8 offset=8
    local.get 5
    local.get 0
    i32.store
    local.get 5
    local.get 2
    i32.eqz
    i32.store8 offset=9
    local.get 5
    i32.const 0
    i32.store offset=4
    local.get 5
    local.get 3
    local.get 4
    call $_ZN4core3fmt8builders10DebugTuple5field17hd9cd67be56e19918E
    local.set 1
    local.get 5
    i32.load8_u offset=8
    local.set 0
    block  ;; label = @1
      local.get 5
      i32.load offset=4
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 255
      i32.and
      local.set 2
      i32.const 1
      local.set 0
      local.get 2
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 2
      block  ;; label = @2
        local.get 4
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        i32.load8_u offset=9
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        local.get 2
        i32.load offset=24
        i32.const 1122400
        i32.const 1
        local.get 2
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
      end
      local.get 2
      i32.load offset=24
      i32.const 1122003
      i32.const 1
      local.get 2
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      local.set 0
    end
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hc06c943f14e6cf7aE (type 18) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 0
    i32.load offset=24
    local.get 1
    local.get 2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    i32.store8 offset=8
    local.get 7
    local.get 0
    i32.store
    local.get 7
    local.get 2
    i32.eqz
    i32.store8 offset=9
    local.get 7
    i32.const 0
    i32.store offset=4
    local.get 7
    local.get 3
    local.get 4
    call $_ZN4core3fmt8builders10DebugTuple5field17hd9cd67be56e19918E
    local.get 5
    local.get 6
    call $_ZN4core3fmt8builders10DebugTuple5field17hd9cd67be56e19918E
    local.set 1
    local.get 7
    i32.load8_u offset=8
    local.set 0
    block  ;; label = @1
      local.get 7
      i32.load offset=4
      local.tee 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 255
      i32.and
      local.set 2
      i32.const 1
      local.set 0
      local.get 2
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 2
      block  ;; label = @2
        local.get 6
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 7
        i32.load8_u offset=9
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        local.get 2
        i32.load offset=24
        i32.const 1122400
        i32.const 1
        local.get 2
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
      end
      local.get 2
      i32.load offset=24
      i32.const 1122003
      i32.const 1
      local.get 2
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      local.set 0
    end
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt9Formatter10debug_list17h0e48dd2248fc82ffE (type 4) (param i32 i32)
    (local i32)
    local.get 1
    i32.load offset=24
    i32.const 1122402
    i32.const 1
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=5
    local.get 0
    local.get 2
    i32.store8 offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h41c631a3c92ed89cE (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 1122723
      i32.const 5
      call $_ZN4core3fmt9Formatter3pad17hd0227a3cebb524c8E
      return
    end
    local.get 1
    i32.const 1122719
    i32.const 4
    call $_ZN4core3fmt9Formatter3pad17hd0227a3cebb524c8E)
  (func $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17had97f4230f28546bE (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=24
          local.tee 3
          i32.const 34
          local.get 2
          i32.const 28
          i32.add
          i32.load
          local.tee 4
          i32.load offset=16
          local.tee 5
          call_indirect (type 2)
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            local.get 0
            local.get 1
            i32.add
            local.set 7
            i32.const 0
            local.set 6
            i32.const 0
            local.set 8
            local.get 0
            local.set 9
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 9
                    i32.load8_s
                    local.tee 2
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 9
                    i32.const 1
                    i32.add
                    local.set 10
                    local.get 2
                    i32.const 255
                    i32.and
                    local.set 11
                    br 1 (;@7;)
                  end
                  local.get 9
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 12
                  local.get 2
                  i32.const 31
                  i32.and
                  local.set 13
                  block  ;; label = @8
                    local.get 2
                    i32.const -33
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 13
                    i32.const 6
                    i32.shl
                    local.get 12
                    i32.or
                    local.set 11
                    local.get 9
                    i32.const 2
                    i32.add
                    local.set 10
                    br 1 (;@7;)
                  end
                  local.get 12
                  i32.const 6
                  i32.shl
                  local.get 9
                  i32.load8_u offset=2
                  i32.const 63
                  i32.and
                  i32.or
                  local.set 12
                  local.get 9
                  i32.const 3
                  i32.add
                  local.set 10
                  block  ;; label = @8
                    local.get 2
                    i32.const -16
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 12
                    local.get 13
                    i32.const 12
                    i32.shl
                    i32.or
                    local.set 11
                    br 1 (;@7;)
                  end
                  local.get 12
                  i32.const 6
                  i32.shl
                  local.get 10
                  i32.load8_u
                  i32.const 63
                  i32.and
                  i32.or
                  local.get 13
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.tee 11
                  i32.const 1114112
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 9
                  i32.const 4
                  i32.add
                  local.set 10
                end
                i32.const 48
                local.set 14
                i32.const 1114114
                local.set 2
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  br_table 8 (;@7;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 2 (;@13;) 4 (;@11;) 1 (;@14;) 1 (;@14;) 3 (;@12;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 5 (;@10;) 0 (;@15;)
                                end
                                local.get 11
                                i32.const 92
                                i32.eq
                                br_if 4 (;@10;)
                              end
                              local.get 11
                              call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hed5947d066212112E
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 11
                              i32.const 1
                              i32.or
                              i32.clz
                              i32.const 2
                              i32.shr_u
                              i32.const 7
                              i32.xor
                              local.set 14
                              br 5 (;@8;)
                            end
                            i32.const 116
                            local.set 14
                            br 5 (;@7;)
                          end
                          i32.const 114
                          local.set 14
                          br 4 (;@7;)
                        end
                        i32.const 110
                        local.set 14
                        br 3 (;@7;)
                      end
                      local.get 11
                      local.set 14
                      br 2 (;@7;)
                    end
                    i32.const 1114113
                    local.set 2
                    local.get 11
                    local.set 14
                    local.get 11
                    call $_ZN4core7unicode9printable12is_printable17h84c2e03d872f6784E
                    br_if 1 (;@7;)
                    local.get 11
                    i32.const 1
                    i32.or
                    i32.clz
                    i32.const 2
                    i32.shr_u
                    i32.const 7
                    i32.xor
                    local.set 14
                  end
                  local.get 11
                  local.set 2
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const -1114112
                    i32.add
                    local.tee 12
                    i32.const 3
                    local.get 12
                    i32.const 3
                    i32.lt_u
                    select
                    i32.const 1
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 6
                    i32.lt_u
                    br_if 1 (;@7;)
                    block  ;; label = @9
                      local.get 6
                      i32.eqz
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 6
                        local.get 1
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 6
                        local.get 1
                        i32.eq
                        br_if 1 (;@9;)
                        br 3 (;@7;)
                      end
                      local.get 0
                      local.get 6
                      i32.add
                      i32.load8_s
                      i32.const -64
                      i32.lt_s
                      br_if 2 (;@7;)
                    end
                    block  ;; label = @9
                      local.get 8
                      i32.eqz
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 8
                        local.get 1
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 8
                        local.get 1
                        i32.ne
                        br_if 3 (;@7;)
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 8
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 2 (;@7;)
                    end
                    block  ;; label = @9
                      local.get 3
                      local.get 0
                      local.get 6
                      i32.add
                      local.get 8
                      local.get 6
                      i32.sub
                      local.get 4
                      i32.load offset=12
                      call_indirect (type 7)
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1
                      return
                    end
                    i32.const 5
                    local.set 15
                    loop  ;; label = @9
                      local.get 15
                      local.set 16
                      local.get 2
                      local.set 12
                      i32.const 1114113
                      local.set 2
                      i32.const 92
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 12
                                  i32.const -1114112
                                  i32.add
                                  local.tee 13
                                  i32.const 3
                                  local.get 13
                                  i32.const 3
                                  i32.lt_u
                                  select
                                  br_table 2 (;@13;) 1 (;@14;) 5 (;@10;) 0 (;@15;) 2 (;@13;)
                                end
                                i32.const 0
                                local.set 15
                                i32.const 125
                                local.set 6
                                local.get 12
                                local.set 2
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 16
                                      i32.const 255
                                      i32.and
                                      br_table 4 (;@13;) 7 (;@10;) 5 (;@12;) 0 (;@17;) 1 (;@16;) 2 (;@15;) 4 (;@13;)
                                    end
                                    i32.const 2
                                    local.set 15
                                    i32.const 123
                                    local.set 6
                                    br 5 (;@11;)
                                  end
                                  i32.const 3
                                  local.set 15
                                  i32.const 117
                                  local.set 6
                                  br 4 (;@11;)
                                end
                                i32.const 4
                                local.set 15
                                i32.const 92
                                local.set 6
                                br 3 (;@11;)
                              end
                              i32.const 1114112
                              local.set 2
                              local.get 14
                              local.set 6
                              local.get 16
                              local.set 15
                              local.get 14
                              i32.const 1114112
                              i32.ne
                              br_if 3 (;@10;)
                            end
                            i32.const 1
                            local.set 2
                            block  ;; label = @13
                              local.get 11
                              i32.const 128
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 2
                              local.set 2
                              local.get 11
                              i32.const 2048
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 3
                              i32.const 4
                              local.get 11
                              i32.const 65536
                              i32.lt_u
                              select
                              local.set 2
                            end
                            local.get 2
                            local.get 8
                            i32.add
                            local.set 6
                            br 4 (;@8;)
                          end
                          local.get 16
                          i32.const 1
                          local.get 14
                          select
                          local.set 15
                          i32.const 48
                          i32.const 87
                          local.get 12
                          local.get 14
                          i32.const 2
                          i32.shl
                          i32.shr_u
                          i32.const 15
                          i32.and
                          local.tee 2
                          i32.const 10
                          i32.lt_u
                          select
                          local.get 2
                          i32.add
                          local.set 6
                          local.get 14
                          i32.const -1
                          i32.add
                          i32.const 0
                          local.get 14
                          select
                          local.set 14
                        end
                        local.get 12
                        local.set 2
                      end
                      local.get 3
                      local.get 6
                      local.get 5
                      call_indirect (type 2)
                      i32.eqz
                      br_if 0 (;@9;)
                    end
                    i32.const 1
                    return
                  end
                  local.get 8
                  local.get 9
                  i32.sub
                  local.get 10
                  i32.add
                  local.set 8
                  local.get 10
                  local.set 9
                  local.get 10
                  local.get 7
                  i32.ne
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
              end
              local.get 0
              local.get 1
              local.get 6
              local.get 8
              i32.const 1122728
              call $_ZN4core3str16slice_error_fail17h66f517969b297684E
              unreachable
            end
            block  ;; label = @5
              local.get 6
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 6
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 6
              local.get 1
              i32.eq
              br_if 1 (;@4;)
              br 4 (;@1;)
            end
            local.get 0
            local.get 6
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 3 (;@1;)
          end
          local.get 3
          local.get 0
          local.get 6
          i32.add
          local.get 1
          local.get 6
          i32.sub
          local.get 4
          i32.load offset=12
          call_indirect (type 7)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        return
      end
      local.get 3
      i32.const 34
      local.get 5
      call_indirect (type 2)
      return
    end
    local.get 0
    local.get 1
    local.get 6
    local.get 1
    i32.const 1122744
    call $_ZN4core3str16slice_error_fail17h66f517969b297684E
    unreachable)
  (func $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hed5947d066212112E (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 11
    i32.shl
    local.set 1
    i32.const 0
    local.set 2
    i32.const 33
    local.set 3
    i32.const 33
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const -1
              local.get 3
              i32.const 1
              i32.shr_u
              local.get 2
              i32.add
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1125184
              i32.add
              i32.load
              i32.const 11
              i32.shl
              local.tee 3
              local.get 1
              i32.ne
              local.get 3
              local.get 1
              i32.lt_u
              select
              local.tee 3
              i32.const 1
              i32.ne
              br_if 0 (;@5;)
              local.get 5
              local.set 4
              br 1 (;@4;)
            end
            local.get 3
            i32.const 255
            i32.and
            i32.const 255
            i32.ne
            br_if 2 (;@2;)
            local.get 5
            i32.const 1
            i32.add
            local.set 2
          end
          local.get 4
          local.get 2
          i32.sub
          local.set 3
          local.get 4
          local.get 2
          i32.gt_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 32
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const 2
              i32.shl
              local.tee 1
              i32.const 1125184
              i32.add
              i32.load
              i32.const 21
              i32.shr_u
              local.set 4
              local.get 2
              i32.const 32
              i32.ne
              br_if 1 (;@4;)
              i32.const 727
              local.set 5
              i32.const 31
              local.set 2
              br 2 (;@3;)
            end
            local.get 2
            i32.const 33
            i32.const 1126044
            call $_ZN4core9panicking18panic_bounds_check17h3cb110ec612eb24cE
            unreachable
          end
          local.get 1
          i32.const 1125188
          i32.add
          i32.load
          i32.const 21
          i32.shr_u
          local.set 5
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.const -1
          i32.add
          local.set 2
        end
        local.get 2
        i32.const 2
        i32.shl
        i32.const 1125184
        i32.add
        i32.load
        i32.const 2097151
        i32.and
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
    end
    block  ;; label = @1
      local.get 5
      local.get 4
      i32.const -1
      i32.xor
      i32.add
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.sub
      local.set 3
      local.get 4
      i32.const 727
      local.get 4
      i32.const 727
      i32.gt_u
      select
      local.set 1
      local.get 5
      i32.const -1
      i32.add
      local.set 5
      i32.const 0
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 4
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i32.const 1125316
            i32.add
            i32.load8_u
            i32.add
            local.tee 2
            local.get 3
            i32.le_u
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 1
          i32.const 727
          i32.const 1126044
          call $_ZN4core9panicking18panic_bounds_check17h3cb110ec612eb24cE
          unreachable
        end
        local.get 5
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 5
      local.set 4
    end
    local.get 4
    i32.const 1
    i32.and)
  (func $_ZN4core7unicode9printable12is_printable17h84c2e03d872f6784E (type 5) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 32
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 127
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 65536
        i32.lt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 131072
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 0
              i32.const -205744
              i32.add
              i32.const 712016
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            block  ;; label = @5
              local.get 0
              i32.const -201547
              i32.add
              i32.const 5
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            block  ;; label = @5
              local.get 0
              i32.const -195102
              i32.add
              i32.const 1506
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            block  ;; label = @5
              local.get 0
              i32.const -191457
              i32.add
              i32.const 3103
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            block  ;; label = @5
              local.get 0
              i32.const -183970
              i32.add
              i32.const 14
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            block  ;; label = @5
              local.get 0
              i32.const -2
              i32.and
              i32.const 178206
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            local.get 0
            i32.const -32
            i32.and
            i32.const 173792
            i32.ne
            br_if 1 (;@3;)
            i32.const 0
            return
          end
          local.get 0
          i32.const 1124258
          i32.const 44
          i32.const 1124346
          i32.const 196
          i32.const 1124542
          i32.const 450
          call $_ZN4core7unicode9printable5check17h47b8ba5283abbd96E
          return
        end
        i32.const 0
        local.set 1
        local.get 0
        i32.const -177978
        i32.add
        i32.const 6
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -1114112
        i32.add
        i32.const -196112
        i32.lt_u
        local.set 1
      end
      local.get 1
      return
    end
    local.get 0
    i32.const 1123588
    i32.const 40
    i32.const 1123668
    i32.const 287
    i32.const 1123955
    i32.const 303
    call $_ZN4core7unicode9printable5check17h47b8ba5283abbd96E)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h23a604b7ebd5d791E (type 7) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_ZN4core3fmt9Formatter3pad17hd0227a3cebb524c8E)
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbdaa2367956888ceE (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      local.tee 3
      i32.const 39
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      local.tee 4
      call_indirect (type 2)
      br_if 0 (;@1;)
      i32.const 1114114
      local.set 1
      i32.const 48
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load
                        local.tee 2
                        br_table 8 (;@2;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 2 (;@8;) 4 (;@6;) 1 (;@9;) 1 (;@9;) 3 (;@7;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 5 (;@5;) 0 (;@10;)
                      end
                      local.get 2
                      i32.const 92
                      i32.eq
                      br_if 4 (;@5;)
                    end
                    local.get 2
                    call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hed5947d066212112E
                    i32.eqz
                    br_if 4 (;@4;)
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.clz
                    i32.const 2
                    i32.shr_u
                    i32.const 7
                    i32.xor
                    local.set 5
                    br 5 (;@3;)
                  end
                  i32.const 116
                  local.set 5
                  br 5 (;@2;)
                end
                i32.const 114
                local.set 5
                br 4 (;@2;)
              end
              i32.const 110
              local.set 5
              br 3 (;@2;)
            end
            local.get 2
            local.set 5
            br 2 (;@2;)
          end
          i32.const 1114113
          local.set 1
          block  ;; label = @4
            local.get 2
            call $_ZN4core7unicode9printable12is_printable17h84c2e03d872f6784E
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.set 5
            br 2 (;@2;)
          end
          local.get 2
          i32.const 1
          i32.or
          i32.clz
          i32.const 2
          i32.shr_u
          i32.const 7
          i32.xor
          local.set 5
        end
        local.get 2
        local.set 1
      end
      i32.const 5
      local.set 6
      loop  ;; label = @2
        local.get 6
        local.set 7
        local.get 1
        local.set 0
        i32.const 1114113
        local.set 1
        i32.const 92
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const -1114112
                    i32.add
                    local.tee 8
                    i32.const 3
                    local.get 8
                    i32.const 3
                    i32.lt_u
                    select
                    br_table 2 (;@6;) 1 (;@7;) 5 (;@3;) 0 (;@8;) 2 (;@6;)
                  end
                  i32.const 0
                  local.set 6
                  i32.const 125
                  local.set 2
                  local.get 0
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 7
                        i32.const 255
                        i32.and
                        br_table 4 (;@6;) 7 (;@3;) 5 (;@5;) 0 (;@10;) 1 (;@9;) 2 (;@8;) 4 (;@6;)
                      end
                      i32.const 2
                      local.set 6
                      i32.const 123
                      local.set 2
                      br 5 (;@4;)
                    end
                    i32.const 3
                    local.set 6
                    i32.const 117
                    local.set 2
                    br 4 (;@4;)
                  end
                  i32.const 4
                  local.set 6
                  i32.const 92
                  local.set 2
                  br 3 (;@4;)
                end
                i32.const 1114112
                local.set 1
                local.get 5
                local.set 2
                local.get 7
                local.set 6
                local.get 5
                i32.const 1114112
                i32.ne
                br_if 3 (;@3;)
              end
              local.get 3
              i32.const 39
              local.get 4
              call_indirect (type 2)
              local.set 2
              br 4 (;@1;)
            end
            local.get 7
            i32.const 1
            local.get 5
            select
            local.set 6
            i32.const 48
            i32.const 87
            local.get 0
            local.get 5
            i32.const 2
            i32.shl
            i32.shr_u
            i32.const 15
            i32.and
            local.tee 1
            i32.const 10
            i32.lt_u
            select
            local.get 1
            i32.add
            local.set 2
            local.get 5
            i32.const -1
            i32.add
            i32.const 0
            local.get 5
            select
            local.set 5
          end
          local.get 0
          local.set 1
        end
        local.get 3
        local.get 2
        local.get 4
        call_indirect (type 2)
        i32.eqz
        br_if 0 (;@2;)
      end
      i32.const 1
      return
    end
    local.get 2)
  (func $_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h9f372edd6fb794b5E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=16
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 0
        i32.store offset=12
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 0
              i32.const 2048
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 0
                i32.const 65536
                i32.lt_u
                br_if 0 (;@6;)
                local.get 2
                local.get 0
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=15
                local.get 2
                local.get 0
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=12
                local.get 2
                local.get 0
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=14
                local.get 2
                local.get 0
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=13
                i32.const 4
                local.set 0
                br 3 (;@3;)
              end
              local.get 2
              local.get 0
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 0
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 0
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 3
              local.set 0
              br 2 (;@3;)
            end
            local.get 2
            local.get 0
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 0
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          local.get 0
          i32.store8 offset=12
          i32.const 1
          local.set 0
        end
        local.get 1
        local.get 2
        i32.const 12
        i32.add
        local.get 0
        call $_ZN4core3fmt9Formatter3pad17hd0227a3cebb524c8E
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=24
      local.get 0
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type 2)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core5slice6memchr7memrchr17h31266fc9ecd72142E (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 3
    i32.const 0
    local.get 3
    local.get 2
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.get 2
    i32.sub
    local.tee 4
    i32.sub
    i32.const 7
    i32.and
    local.get 3
    local.get 4
    i32.lt_u
    select
    local.tee 5
    i32.sub
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              i32.add
              local.tee 5
              local.get 2
              local.get 6
              i32.add
              local.tee 7
              i32.sub
              local.set 8
              block  ;; label = @6
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                i32.const -1
                i32.add
                local.get 6
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              local.get 7
              local.get 5
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                i32.const -2
                i32.add
                local.get 6
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              local.get 7
              local.get 5
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                i32.const -3
                i32.add
                local.get 6
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              local.get 7
              local.get 5
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                i32.const -4
                i32.add
                local.get 6
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              local.get 7
              local.get 5
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                i32.const -5
                i32.add
                local.get 6
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              local.get 7
              local.get 5
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                i32.const -6
                i32.add
                local.get 6
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              local.get 7
              local.get 5
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.load8_u
                local.get 1
                i32.const 255
                i32.and
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                i32.const -7
                i32.add
                local.get 6
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              local.get 7
              local.get 5
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              i32.const -8
              i32.add
              local.get 6
              i32.add
              local.set 4
              br 1 (;@4;)
            end
            local.get 4
            local.get 3
            local.get 3
            local.get 4
            i32.gt_u
            select
            local.set 7
            local.get 1
            i32.const 255
            i32.and
            i32.const 16843009
            i32.mul
            local.set 5
            block  ;; label = @5
              loop  ;; label = @6
                local.get 6
                local.tee 4
                local.get 7
                i32.le_u
                br_if 1 (;@5;)
                local.get 2
                local.get 4
                i32.add
                local.tee 8
                i32.const -8
                i32.add
                i32.load
                local.get 5
                i32.xor
                local.tee 6
                i32.const -1
                i32.xor
                local.get 6
                i32.const -16843009
                i32.add
                i32.and
                i32.const -2139062144
                i32.and
                br_if 1 (;@5;)
                local.get 4
                i32.const -8
                i32.add
                local.set 6
                local.get 8
                i32.const -4
                i32.add
                i32.load
                local.get 5
                i32.xor
                local.tee 8
                i32.const -1
                i32.xor
                local.get 8
                i32.const -16843009
                i32.add
                i32.and
                i32.const -2139062144
                i32.and
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            local.get 4
            local.get 3
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            i32.const -1
            i32.add
            local.set 5
            local.get 1
            i32.const 255
            i32.and
            local.set 8
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 3 (;@3;)
              end
              local.get 5
              local.get 4
              i32.add
              local.set 6
              local.get 4
              i32.const -1
              i32.add
              local.set 4
              local.get 6
              i32.load8_u
              local.get 8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          i32.const 1
          local.set 6
        end
        local.get 0
        local.get 4
        i32.store offset=4
        local.get 0
        local.get 6
        i32.store
        return
      end
      local.get 6
      local.get 3
      i32.const 1122808
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 4
    local.get 3
    i32.const 1122824
    call $_ZN4core5slice5index24slice_end_index_len_fail17h76f0ffa9e366375aE
    unreachable)
  (func $_ZN4core5slice5index29slice_start_index_len_fail_rt17h596ff47fa7d1ab93E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 17
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1122892
    i32.store offset=8
    local.get 3
    i32.const 17
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN4core5slice5index27slice_end_index_len_fail_rt17h8e17a4d6ed391352E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 17
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1122924
    i32.store offset=8
    local.get 3
    i32.const 17
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN4core5slice5index25slice_index_order_fail_rt17hc8b2bd1ec1abef84E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 17
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1122976
    i32.store offset=8
    local.get 3
    i32.const 17
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 3
    local.get 3
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
    unreachable)
  (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17ha5c985520a399f6fE (type 2) (param i32 i32) (result i32)
    local.get 0
    i64.load8_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h80ae74444143944fE)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h4359cce33b80e0ddE (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 55
      local.get 3
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 15
      i32.gt_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.const 128
      i32.add
      local.tee 3
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 128
      i32.const 1122448
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1122464
    i32.const 2
    local.get 2
    local.get 0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3str19slice_error_fail_rt17h05c0ac6d8ceee012E (type 13) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 257
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 6
                  loop  ;; label = @8
                    local.get 0
                    local.get 6
                    i32.add
                    local.set 7
                    local.get 6
                    i32.const -1
                    i32.add
                    local.tee 8
                    local.set 6
                    local.get 7
                    i32.const 256
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.le_s
                    br_if 0 (;@8;)
                  end
                  local.get 8
                  i32.const 257
                  i32.add
                  local.tee 6
                  local.get 1
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 1
                  i32.const -257
                  i32.add
                  local.get 8
                  i32.ne
                  br_if 4 (;@3;)
                  local.get 5
                  local.get 6
                  i32.store offset=20
                  br 1 (;@6;)
                end
                local.get 5
                local.get 1
                i32.store offset=20
              end
              local.get 5
              local.get 0
              i32.store offset=16
              i32.const 0
              local.set 6
              i32.const 1121960
              local.set 7
              br 1 (;@4;)
            end
            local.get 0
            local.get 8
            i32.add
            i32.const 257
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 1 (;@3;)
            local.get 5
            local.get 6
            i32.store offset=20
            local.get 5
            local.get 0
            i32.store offset=16
            i32.const 5
            local.set 6
            i32.const 1123248
            local.set 7
          end
          local.get 5
          local.get 6
          i32.store offset=28
          local.get 5
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 1
              i32.gt_u
              local.tee 6
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              i32.gt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      local.get 3
                      i32.gt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 2
                            local.get 1
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 2
                            local.get 1
                            i32.eq
                            br_if 1 (;@11;)
                            br 2 (;@10;)
                          end
                          local.get 0
                          local.get 2
                          i32.add
                          i32.load8_s
                          i32.const -64
                          i32.lt_s
                          br_if 1 (;@10;)
                        end
                        local.get 3
                        local.set 2
                      end
                      local.get 5
                      local.get 2
                      i32.store offset=32
                      local.get 1
                      local.set 6
                      block  ;; label = @10
                        local.get 2
                        local.get 1
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 2
                        i32.const 1
                        i32.add
                        local.tee 6
                        i32.const 0
                        local.get 2
                        i32.const -3
                        i32.add
                        local.tee 7
                        local.get 7
                        local.get 2
                        i32.gt_u
                        select
                        local.tee 7
                        i32.lt_u
                        br_if 6 (;@4;)
                        local.get 0
                        local.get 6
                        i32.add
                        local.get 0
                        local.get 7
                        i32.add
                        i32.sub
                        local.set 6
                        loop  ;; label = @11
                          local.get 6
                          i32.const -1
                          i32.add
                          local.set 6
                          local.get 0
                          local.get 2
                          i32.add
                          local.set 7
                          local.get 2
                          i32.const -1
                          i32.add
                          local.tee 8
                          local.set 2
                          local.get 7
                          i32.load8_s
                          i32.const -64
                          i32.lt_s
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        i32.const 1
                        i32.add
                        local.set 6
                      end
                      block  ;; label = @10
                        local.get 6
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 6
                          local.get 1
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 1
                          i32.eq
                          br_if 1 (;@10;)
                          br 10 (;@1;)
                        end
                        local.get 0
                        local.get 6
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 9 (;@1;)
                      end
                      local.get 6
                      local.get 1
                      i32.eq
                      br_if 7 (;@2;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          local.get 6
                          i32.add
                          local.tee 0
                          i32.load8_s
                          local.tee 7
                          i32.const -1
                          i32.gt_s
                          br_if 0 (;@11;)
                          local.get 0
                          i32.load8_u offset=1
                          i32.const 63
                          i32.and
                          local.set 2
                          local.get 7
                          i32.const 31
                          i32.and
                          local.set 8
                          local.get 7
                          i32.const -33
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 8
                          i32.const 6
                          i32.shl
                          local.get 2
                          i32.or
                          local.set 0
                          br 4 (;@7;)
                        end
                        local.get 5
                        local.get 7
                        i32.const 255
                        i32.and
                        i32.store offset=36
                        i32.const 1
                        local.set 7
                        br 4 (;@6;)
                      end
                      local.get 2
                      i32.const 6
                      i32.shl
                      local.get 0
                      i32.load8_u offset=2
                      i32.const 63
                      i32.and
                      i32.or
                      local.set 2
                      local.get 7
                      i32.const -16
                      i32.ge_u
                      br_if 1 (;@8;)
                      local.get 2
                      local.get 8
                      i32.const 12
                      i32.shl
                      i32.or
                      local.set 0
                      br 2 (;@7;)
                    end
                    local.get 5
                    i32.const 100
                    i32.add
                    i32.const 92
                    i32.store
                    local.get 5
                    i32.const 72
                    i32.add
                    i32.const 20
                    i32.add
                    i32.const 92
                    i32.store
                    local.get 5
                    i32.const 84
                    i32.add
                    i32.const 17
                    i32.store
                    local.get 5
                    i32.const 48
                    i32.add
                    i32.const 20
                    i32.add
                    i32.const 4
                    i32.store
                    local.get 5
                    i64.const 4
                    i64.store offset=52 align=4
                    local.get 5
                    i32.const 1123348
                    i32.store offset=48
                    local.get 5
                    i32.const 17
                    i32.store offset=76
                    local.get 5
                    local.get 5
                    i32.const 72
                    i32.add
                    i32.store offset=64
                    local.get 5
                    local.get 5
                    i32.const 24
                    i32.add
                    i32.store offset=96
                    local.get 5
                    local.get 5
                    i32.const 16
                    i32.add
                    i32.store offset=88
                    local.get 5
                    local.get 5
                    i32.const 12
                    i32.add
                    i32.store offset=80
                    local.get 5
                    local.get 5
                    i32.const 8
                    i32.add
                    i32.store offset=72
                    local.get 5
                    i32.const 48
                    i32.add
                    local.get 4
                    call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
                    unreachable
                  end
                  local.get 2
                  i32.const 6
                  i32.shl
                  local.get 0
                  i32.load8_u offset=3
                  i32.const 63
                  i32.and
                  i32.or
                  local.get 8
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.tee 0
                  i32.const 1114112
                  i32.eq
                  br_if 5 (;@2;)
                end
                local.get 5
                local.get 0
                i32.store offset=36
                i32.const 1
                local.set 7
                local.get 0
                i32.const 128
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 2
                local.set 7
                local.get 0
                i32.const 2048
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 3
                i32.const 4
                local.get 0
                i32.const 65536
                i32.lt_u
                select
                local.set 7
              end
              local.get 5
              local.get 6
              i32.store offset=40
              local.get 5
              local.get 7
              local.get 6
              i32.add
              i32.store offset=44
              local.get 5
              i32.const 48
              i32.add
              i32.const 20
              i32.add
              i32.const 5
              i32.store
              local.get 5
              i32.const 108
              i32.add
              i32.const 92
              i32.store
              local.get 5
              i32.const 100
              i32.add
              i32.const 92
              i32.store
              local.get 5
              i32.const 72
              i32.add
              i32.const 20
              i32.add
              i32.const 96
              i32.store
              local.get 5
              i32.const 84
              i32.add
              i32.const 97
              i32.store
              local.get 5
              i64.const 5
              i64.store offset=52 align=4
              local.get 5
              i32.const 1123432
              i32.store offset=48
              local.get 5
              i32.const 17
              i32.store offset=76
              local.get 5
              local.get 5
              i32.const 72
              i32.add
              i32.store offset=64
              local.get 5
              local.get 5
              i32.const 24
              i32.add
              i32.store offset=104
              local.get 5
              local.get 5
              i32.const 16
              i32.add
              i32.store offset=96
              local.get 5
              local.get 5
              i32.const 40
              i32.add
              i32.store offset=88
              local.get 5
              local.get 5
              i32.const 36
              i32.add
              i32.store offset=80
              local.get 5
              local.get 5
              i32.const 32
              i32.add
              i32.store offset=72
              local.get 5
              i32.const 48
              i32.add
              local.get 4
              call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
              unreachable
            end
            local.get 5
            local.get 2
            local.get 3
            local.get 6
            select
            i32.store offset=40
            local.get 5
            i32.const 48
            i32.add
            i32.const 20
            i32.add
            i32.const 3
            i32.store
            local.get 5
            i32.const 72
            i32.add
            i32.const 20
            i32.add
            i32.const 92
            i32.store
            local.get 5
            i32.const 84
            i32.add
            i32.const 92
            i32.store
            local.get 5
            i64.const 3
            i64.store offset=52 align=4
            local.get 5
            i32.const 1123288
            i32.store offset=48
            local.get 5
            i32.const 17
            i32.store offset=76
            local.get 5
            local.get 5
            i32.const 72
            i32.add
            i32.store offset=64
            local.get 5
            local.get 5
            i32.const 24
            i32.add
            i32.store offset=88
            local.get 5
            local.get 5
            i32.const 16
            i32.add
            i32.store offset=80
            local.get 5
            local.get 5
            i32.const 40
            i32.add
            i32.store offset=72
            local.get 5
            i32.const 48
            i32.add
            local.get 4
            call $_ZN4core9panicking9panic_fmt17h71cc2fdc1a9f096aE
            unreachable
          end
          local.get 7
          local.get 6
          i32.const 1123500
          call $_ZN4core5slice5index22slice_index_order_fail17h4a60c1a53ce9ceb9E
          unreachable
        end
        local.get 0
        local.get 1
        i32.const 0
        local.get 6
        local.get 4
        call $_ZN4core3str16slice_error_fail17h66f517969b297684E
        unreachable
      end
      i32.const 1121960
      i32.const 43
      local.get 4
      call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
      unreachable
    end
    local.get 0
    local.get 1
    local.get 6
    local.get 1
    local.get 4
    call $_ZN4core3str16slice_error_fail17h66f517969b297684E
    unreachable)
  (func $_ZN4core7unicode9printable5check17h47b8ba5283abbd96E (type 18) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.const 1
        i32.shl
        i32.add
        local.set 8
        local.get 0
        i32.const 65280
        i32.and
        i32.const 8
        i32.shr_u
        local.set 9
        i32.const 0
        local.set 10
        local.get 0
        i32.const 255
        i32.and
        local.set 11
        loop  ;; label = @3
          local.get 1
          i32.const 2
          i32.add
          local.set 12
          local.get 10
          local.get 1
          i32.load8_u offset=1
          local.tee 2
          i32.add
          local.set 13
          block  ;; label = @4
            local.get 1
            i32.load8_u
            local.tee 1
            local.get 9
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            local.get 9
            i32.gt_u
            br_if 2 (;@2;)
            local.get 13
            local.set 10
            local.get 12
            local.set 1
            local.get 12
            local.get 8
            i32.eq
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 13
                local.get 10
                i32.lt_u
                br_if 0 (;@6;)
                local.get 13
                local.get 4
                i32.gt_u
                br_if 1 (;@5;)
                local.get 3
                local.get 10
                i32.add
                local.set 1
                loop  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 2
                  i32.const -1
                  i32.add
                  local.set 2
                  local.get 1
                  i32.load8_u
                  local.set 10
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 10
                  local.get 11
                  i32.ne
                  br_if 0 (;@7;)
                end
                i32.const 0
                local.set 7
                br 5 (;@1;)
              end
              local.get 10
              local.get 13
              i32.const 1123556
              call $_ZN4core5slice5index22slice_index_order_fail17h4a60c1a53ce9ceb9E
              unreachable
            end
            local.get 13
            local.get 4
            i32.const 1123556
            call $_ZN4core5slice5index24slice_end_index_len_fail17h76f0ffa9e366375aE
            unreachable
          end
          local.get 13
          local.set 10
          local.get 12
          local.set 1
          local.get 12
          local.get 8
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      local.get 6
      i32.add
      local.set 11
      local.get 0
      i32.const 65535
      i32.and
      local.set 1
      i32.const 1
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.set 10
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.load8_u
              local.tee 2
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              local.tee 13
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 10
              local.set 5
              br 1 (;@4;)
            end
            local.get 10
            local.get 11
            i32.eq
            br_if 2 (;@2;)
            local.get 13
            i32.const 127
            i32.and
            i32.const 8
            i32.shl
            local.get 5
            i32.load8_u offset=1
            i32.or
            local.set 2
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 1
          local.get 2
          i32.sub
          local.tee 1
          i32.const 0
          i32.lt_s
          br_if 2 (;@1;)
          local.get 7
          i32.const 1
          i32.xor
          local.set 7
          local.get 5
          local.get 11
          i32.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 1121960
      i32.const 43
      i32.const 1123572
      call $_ZN4core9panicking5panic17he29c10572c6dc9a1E
      unreachable
    end
    local.get 7
    i32.const 1
    i32.and)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h5845731b1bb89d06E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 87
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.tee 0
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 128
      i32.const 1122448
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1122464
    i32.const 2
    local.get 2
    local.get 3
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h0a1c539cc93c96c3E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 87
      local.get 3
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 15
      i32.gt_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.const 128
      i32.add
      local.tee 3
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 128
      i32.const 1122448
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1122464
    i32.const 2
    local.get 2
    local.get 0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6cd6cf8c8fee70c1E (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 1
    i32.load offset=24
    i32.const 1125045
    i32.const 13
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    local.set 0
    local.get 2
    i32.const 0
    i32.store8 offset=13
    local.get 2
    local.get 0
    i32.store8 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1125032
    i32.const 4
    local.get 2
    i32.const 4
    i32.add
    i32.const 1125060
    call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
    local.set 0
    local.get 2
    i32.load8_u offset=12
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=13
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 3
      i32.const 1
      local.set 1
      local.get 3
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        i32.const 1122395
        i32.const 2
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=24
      i32.const 1122381
      i32.const 1
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h9f2b5ca7d352791dE (type 6) (param i32 i32 i32)
    (local i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            i32.const 0
            i32.store8 offset=1
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load8_u
                i32.const -43
                i32.add
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;) 2 (;@4;)
              end
              local.get 2
              i32.const 1
              i32.eq
              br_if 3 (;@2;)
              br 1 (;@4;)
            end
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.add
            local.set 1
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 17
                  i32.lt_u
                  br_if 0 (;@7;)
                  i64.const 0
                  local.set 4
                  loop  ;; label = @8
                    local.get 3
                    local.get 4
                    i64.const 0
                    i64.const 10
                    i64.const 0
                    call $__multi3
                    local.get 1
                    i32.load8_u
                    i32.const -48
                    i32.add
                    local.tee 5
                    i32.const 9
                    i32.gt_u
                    br_if 6 (;@2;)
                    local.get 3
                    i64.load offset=8
                    i64.const 0
                    i64.ne
                    br_if 4 (;@4;)
                    local.get 3
                    i64.load
                    local.tee 6
                    local.get 5
                    local.get 7
                    local.get 5
                    i32.const 10
                    i32.lt_u
                    select
                    i64.extend_i32_u
                    i64.add
                    local.tee 4
                    local.get 6
                    i64.lt_u
                    br_if 3 (;@5;)
                    local.get 1
                    i32.const 1
                    i32.add
                    local.set 1
                    local.get 5
                    local.set 7
                    local.get 2
                    i32.const -1
                    i32.add
                    local.tee 2
                    br_if 0 (;@8;)
                    br 2 (;@6;)
                  end
                end
                i64.const 0
                local.set 4
                loop  ;; label = @7
                  local.get 1
                  i32.load8_u
                  i32.const -48
                  i32.add
                  local.tee 5
                  i32.const 9
                  i32.gt_u
                  br_if 5 (;@2;)
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 4
                  i64.const 10
                  i64.mul
                  local.get 5
                  i64.extend_i32_u
                  i64.add
                  local.set 4
                  local.get 2
                  i32.const -1
                  i32.add
                  local.tee 2
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              local.get 4
              i64.store offset=8
              i32.const 0
              local.set 1
              br 4 (;@1;)
            end
            local.get 0
            i32.const 2
            i32.store8 offset=1
            br 1 (;@3;)
          end
          local.get 0
          i32.const 2
          i32.store8 offset=1
        end
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.set 1
      local.get 0
      i32.const 1
      i32.store8 offset=1
    end
    local.get 0
    local.get 1
    i32.store8
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17hcacc26ad2b357f9cE (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 0
              i64.extend_i32_u
              i64.const 255
              i64.and
              i32.const 1
              local.get 1
              call $_ZN4core3fmt3num3imp7fmt_u6417h80ae74444143944fE
              local.set 0
              br 4 (;@1;)
            end
            i32.const 0
            local.set 3
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 87
              local.get 0
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 0
              i32.const 255
              i32.and
              local.tee 4
              i32.const 4
              i32.shr_u
              local.set 0
              local.get 4
              i32.const 15
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 128
            i32.add
            local.tee 0
            i32.const 129
            i32.ge_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 1
            i32.const 1122464
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
            local.set 0
            br 3 (;@1;)
          end
          i32.const 0
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            i32.const 127
            i32.add
            i32.const 48
            i32.const 55
            local.get 0
            i32.const 15
            i32.and
            local.tee 4
            i32.const 10
            i32.lt_u
            select
            local.get 4
            i32.add
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 255
            i32.and
            local.tee 4
            i32.const 4
            i32.shr_u
            local.set 0
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 3
          i32.const 128
          i32.add
          local.tee 0
          i32.const 129
          i32.ge_u
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.const 1122464
          i32.const 2
          local.get 2
          local.get 3
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 3
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.const 128
        i32.const 1122448
        call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
        unreachable
      end
      local.get 0
      i32.const 128
      i32.const 1122448
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp7fmt_u6417h80ae74444143944fE (type 19) (param i64 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1122466
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1122466
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 99
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      local.get 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1122466
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1122466
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1121960
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h831c4cf959d207b3E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 127
      i32.add
      i32.const 48
      i32.const 55
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 10
      i32.lt_u
      select
      local.get 4
      i32.add
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.tee 0
      i32.const 129
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 128
      i32.const 1122448
      call $_ZN4core5slice5index26slice_start_index_len_fail17h42f113e2494d7644E
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1122464
    i32.const 2
    local.get 2
    local.get 3
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h1689b1d8173c4a87E
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hc9985ddad73a8ab6E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.tee 0
    i64.extend_i32_u
    i64.const 0
    local.get 0
    i64.extend_i32_s
    i64.sub
    local.get 0
    i32.const -1
    i32.gt_s
    local.tee 0
    select
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h80ae74444143944fE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h132f740d56cd6653E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hddf26c9c1c8c2de2E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h26fe0f50167f1697E (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load
              i32.load8_u
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;) 4 (;@1;) 0 (;@5;)
            end
            local.get 1
            i32.load offset=24
            i32.const 1125036
            i32.const 5
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 7)
            return
          end
          local.get 1
          i32.load offset=24
          i32.const 1125098
          i32.const 12
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          return
        end
        local.get 1
        i32.load offset=24
        i32.const 1125087
        i32.const 11
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        return
      end
      local.get 1
      i32.load offset=24
      i32.const 1125076
      i32.const 11
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      return
    end
    local.get 1
    i32.load offset=24
    i32.const 1125041
    i32.const 4
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h48233890c4419ffbE (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        i32.load8_u
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        i32.const 1125114
        i32.const 4
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.set 0
      local.get 2
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=12
      local.get 2
      local.get 1
      i32.load offset=24
      i32.const 1125110
      i32.const 4
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      i32.store8 offset=24
      local.get 2
      local.get 1
      i32.store offset=16
      local.get 2
      i32.const 0
      i32.store8 offset=25
      local.get 2
      i32.const 0
      i32.store offset=20
      local.get 2
      i32.const 16
      i32.add
      local.get 2
      i32.const 12
      i32.add
      i32.const 1122404
      call $_ZN4core3fmt8builders10DebugTuple5field17hd9cd67be56e19918E
      local.set 3
      local.get 2
      i32.load8_u offset=24
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=20
          local.tee 4
          br_if 0 (;@3;)
          local.get 1
          local.set 0
          br 1 (;@2;)
        end
        local.get 1
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.load
        local.set 1
        block  ;; label = @3
          local.get 4
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u offset=25
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u
          i32.const 4
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          local.set 0
          local.get 1
          i32.load offset=24
          i32.const 1122400
          i32.const 1
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 7)
          br_if 1 (;@2;)
        end
        local.get 1
        i32.load offset=24
        i32.const 1122003
        i32.const 1
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 0
      end
      local.get 0
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      local.set 1
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17had7442ef6c1fde01E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    i32.load8_u
    local.get 1
    call $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17hcacc26ad2b357f9cE)
  (func $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hcee37a1f9efb855cE (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 1
    i32.load offset=24
    i32.const 1125136
    i32.const 9
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7)
    local.set 0
    local.get 2
    i32.const 0
    i32.store8 offset=13
    local.get 2
    local.get 0
    i32.store8 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1125145
    i32.const 11
    local.get 2
    i32.const 1125120
    call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
    i32.const 1125156
    i32.const 9
    local.get 2
    i32.const 4
    i32.add
    i32.const 1125168
    call $_ZN4core3fmt8builders11DebugStruct5field17hbc328392dbf28937E
    local.set 0
    local.get 2
    i32.load8_u offset=12
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=13
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 3
      i32.const 1
      local.set 1
      local.get 3
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        i32.load8_u
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        i32.const 1122395
        i32.const 2
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 7)
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=24
      i32.const 1122381
      i32.const 1
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 7)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $__multi3 (type 20) (param i32 i64 i64 i64 i64)
    (local i64 i64 i64 i64 i64 i64)
    local.get 0
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 5
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 6
    i64.mul
    local.tee 7
    local.get 5
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 8
    i64.mul
    local.tee 9
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 10
    local.get 6
    i64.mul
    i64.add
    local.tee 5
    i64.const 32
    i64.shl
    i64.add
    local.tee 6
    i64.store
    local.get 0
    local.get 10
    local.get 8
    i64.mul
    local.get 5
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i64.const 32
    i64.shr_u
    i64.or
    i64.add
    local.get 6
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 4
    local.get 1
    i64.mul
    local.get 3
    local.get 2
    i64.mul
    i64.add
    i64.add
    i64.store offset=8)
  (func $_start.command_export (type 0)
    call $__wasm_call_ctors
    call $_start
    call $__wasm_call_dtors)
  (func $read_memory_byte.command_export (type 10) (param i32 i32 i64 i64)
    call $__wasm_call_ctors
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $read_memory_byte
    call $__wasm_call_dtors)
  (func $read_memory_offset.command_export (type 5) (param i32) (result i32)
    call $__wasm_call_ctors
    local.get 0
    call $read_memory_offset
    call $__wasm_call_dtors)
  (func $predict.command_export (type 1) (param i32)
    call $__wasm_call_ctors
    local.get 0
    call $predict
    call $__wasm_call_dtors)
  (func $get_cache_time.command_export (type 4) (param i32 i32)
    call $__wasm_call_ctors
    local.get 0
    local.get 1
    call $get_cache_time
    call $__wasm_call_dtors)
  (func $main.command_export (type 2) (param i32 i32) (result i32)
    call $__wasm_call_ctors
    local.get 0
    local.get 1
    call $main
    call $__wasm_call_dtors)
  (table (;0;) 110 110 funcref)
  (memory (;0;) 18)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "_start" (func $_start.command_export))
  (export "read_memory_byte" (func $read_memory_byte.command_export))
  (export "read_memory_offset" (func $read_memory_offset.command_export))
  (export "predict" (func $predict.command_export))
  (export "get_cache_time" (func $get_cache_time.command_export))
  (export "main" (func $main.command_export))
  (elem (;0;) (i32.const 1) func $_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd87e38a942c4297dE.llvm.3089338565553552829 $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h945f1e06ef1ef8acE.llvm.3089338565553552829 $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17haebda16984b1c7e5E.llvm.3089338565553552829 $_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h9f372edd6fb794b5E $_ZN7sp_sync4main17hc1ae30fa4ea6b719E $_ZN4core3ptr52drop_in_place$LT$core..num..error..ParseIntError$GT$17h2a590962b29c9d0fE $_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6cd6cf8c8fee70c1E $_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h8ffe9d58339cabc4E $_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h284f2ef85a008e91E $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h74a99f7b85295a13E $_ZN70_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h04f169701216d09dE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hc9985ddad73a8ab6E $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h3555577e3b4288d1E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hda31a771c879ff37E $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h09e62c93dc83d02dE $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17hfaf23ea82406e706E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hfea2dbbbadc4d858E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf793f4a8f90a5cc1E $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h5d216ab94188b1bfE $_ZN3std5alloc24default_alloc_error_hook17h0598f644ec239377E $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h61ab529aded2fc2cE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb33aa745e1005fe5E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hc28da4f4a11ab1b5E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h1c59a0372847abceE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb2acd698a29e5610E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff8f3f5e501dc156E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h30fd4b35974510aeE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17heec6153fd2df74e5E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hbea75e0a50af8d9dE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hfe7b876e5c97fd7dE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h693e44cab8e1ffd0E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h285587d80ca8cdf3E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7ac5aed1b9d4c4ceE $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f99ef5d1bfbf506E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc8756858645eef2E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he447fa906e540e7fE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4ac40482c0e5ad3fE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7469f13451924793E $_ZN62_$LT$std..io..error..ErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h3179d984aedf22fcE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8a7c67d8f56b1c6aE $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h6fae94c91385ed96E $_ZN4core3ptr205drop_in_place$LT$$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$..from..StringError$GT$17h26e90a7900e7db30E $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9ebc19cc34e1dceE $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h93db41315d613018E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17had05ad74dd2a4217E $_ZN4core3fmt5Write10write_char17hb60801a590d935f5E $_ZN4core3fmt5Write9write_fmt17ha776b70cfa82947cE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha7b28a13338cc7aeE $_ZN4core3fmt5Write10write_char17h752200e4b714b6b6E $_ZN4core3fmt5Write9write_fmt17hc7be3432864b7f4fE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17had73adffe4c411e2E $_ZN4core3fmt5Write10write_char17h457e47b014ef05bbE $_ZN4core3fmt5Write9write_fmt17hf6ee32f70ceb21f7E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h45bfe2bc4758c031E $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hd83033684052e150E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0289fed98939d817E $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h40ae03ec43848d19E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h06860b6a6410417fE $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h15c657531af9ec1cE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h96425111afa21263E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h4f122ecbe6b98e37E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h34fa90f555cdec33E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17h17e8fc23fd4cea09E $_ZN3std2io5Write9write_all17h9162cb4d05a6f809E $_ZN3std2io5Write18write_all_vectored17h74fc3f0f83af1858E $_ZN3std2io5Write9write_fmt17h64829f9327d5207bE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17hfcf1a19f821d89f9E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h4180f54b894c6293E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17haae1d573217114a8E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17hb445fb2993cb179eE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hcfa82c221cadc3fbE $_ZN3std2io5Write18write_all_vectored17he4c59140217b70bcE $_ZN3std2io5Write9write_fmt17h7d0148cd13ccbf72E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hcc4608a44e56b59eE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h89a7ec15b3c3af74E $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h3b279e2ce9295673E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h7719b4ae021628e0E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h07a26fc78afcb535E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hf90dfb84ee05582aE $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h6bd516ec9ca5481cE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17he98c211961ee7be9E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe29d768ce08f33cE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd3c9bdefb10e4552E $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hcee37a1f9efb855cE $_ZN4core3ptr103drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$17hf6e24c9b2d9bea52E $_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h19905f4a7f52a80bE $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h8a13689143c47a7fE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b861c5d7ba64f62E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h33a07471e485547fE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc686cc63e799c6cfE $_ZN4core3ops8function6FnOnce9call_once17hfb24ef3b18ab4e9eE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hece037ae6cf5db17E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f2c900d08b6885E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6b1f9540e96eab0fE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9fcb25911b8fa60E $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h432d281245c05e16E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbdaa2367956888ceE $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h9c1ce05c02eebb6dE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h4a85ec1361a08e55E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4c2165e190c05103E $_ZN4core3fmt5Write10write_char17h7df999b3b4e00bafE $_ZN4core3fmt5Write9write_fmt17hd6c44f7b7de919acE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17had7442ef6c1fde01E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17he9cd3cbecdcc74a2E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h996d76a0633ac923E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9bf1b444a31f28c5E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h26fe0f50167f1697E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h132f740d56cd6653E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h48233890c4419ffbE)
  (data $.data (i32.const 1126060) "\01\00\00\00\08\17\11\00"))
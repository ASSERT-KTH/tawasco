use std::arch::asm;

use wasmtime_wasi::sync::WasiCtxBuilder;
extern crate libc;
use std::sync::Arc;
use tracer::{MemoryAllocator, get_current_working_dir, create_linker, disable_aslr};

#[cfg(all(target_arch = "x86_64"))]
use std::arch::x86_64::_mm_mfence;
/// # Wasmtime based execution of a wasm binary with IntelPIN tracing.
/// # Otherwise, the execution is based on a regular Wasm-WASI binary.
///
/// ## Example
/// `pin -t tracer.so -- tracer i.wasm`
///
/*#[derive(Parser)]
struct Options {
    /// The input Wasm binary to execute
    input: PathBuf,

    /// Linear mem offset
    #[clap(arg(long = "mem_offset", default_value = "0x2000_0000"))]
    mem_offset: usize,

    /// Binary mem offset
    #[clap(arg(long = "bin_offset", default_value = "0x1000_0000"))]
    bin_offset: usize,


    /// Shared mem name for tracing
    #[clap(arg(long = "shared_mem", default_value = "1234"))]
    shared_mem: usize,
}*/

#[link(name = "pintool_bridge")]
extern "C" {
    
    fn set_lock(val: u8);

    fn attach();
}

#[inline]
pub fn read_memory_offset(ptr: *const u8) -> u8 {
    let result: u8 = 0;
    unsafe {
        asm!(
            "mov {result}, [{x}]",
            x = in(reg) ptr,
            result = out(reg_byte) _
        );
    };
    result
}


pub fn execute_wasm(path: String) {

    let now = std::time::Instant::now();
    // unsafe {set_lock(1)};
    eprintln!("T-> Executing {}", path);

    let pathcp = path.clone();
    let filename = pathcp.split("/").last().unwrap();
    // let binary = std::fs::read(path).unwrap();
    // The binary was already compiled


    // Compile the binary and execute it with wasmtime

    let mut config = wasmtime::Config::default();
    let allocator = MemoryAllocator;
    let config = config.strategy(wasmtime::Strategy::Cranelift);

    // Remove spectre protection    
    let config = config.cranelift_nan_canonicalization(false);
    // let config = config.debug_info(true);
    let config = unsafe { config.cranelift_flag_set("enable_heap_access_spectre_mitigation", "no") };
    let config = unsafe { config.cranelift_flag_set("enable_table_access_spectre_mitigation", "no") }; 
    // TODO set this option if flag
    
    let config = config.with_host_memory(Arc::new(allocator));
    let config = config.parallel_compilation(false);
    let config = config.static_memory_guard_size(100);
    let config = config.dynamic_memory_guard_size(100);
    let config = config.static_memory_maximum_size(100000000);
    let config = config.static_memory_forced(true);
    let config = config.max_wasm_stack(10 << 20).async_stack_size(100 << 20);
    let config = config.memory_init_cow(true);
    // let config = config.max_wasm_stack(10_000_000); // 10Mb
    let config = config.cranelift_opt_level(wasmtime::OptLevel::None);
    // let mut config = config.parallel_compilation(false);
    let config = config.memory_init_cow(true);
    
    // Create a new store
    let engine = wasmtime::Engine::new(&config).unwrap();

    // If the file endswith cwasm
    let is_cwasm = pathcp.clone().ends_with(".cwasm");
    let module =  if is_cwasm { 
        unsafe { wasmtime::Module::deserialize_file(&engine, pathcp.clone()) }.unwrap() } else {
            wasmtime::Module::from_file(&engine, pathcp.clone()).unwrap()
    };


    // Serialize it
    let serialized = module.serialize().unwrap();
    // Save it to disk, get the filename from the argument path
    std::fs::write(format!("{}.cwasm", filename), serialized).unwrap();
    ////
    let args: Vec<String> = std::env::args().collect();

    // Get current folder
    let folder_of_bin = get_current_working_dir().unwrap().display().to_string();
    eprintln!("Preopening {}", folder_of_bin);

    let wasi = WasiCtxBuilder::new()
        .inherit_stdio()
        .args( &args[1..])
        .unwrap()
        // Preopen in the CWD 
        .preopened_dir(
            wasmtime_wasi::sync::Dir::open_ambient_dir(folder_of_bin.clone(), wasmtime_wasi::sync::ambient_authority()).unwrap()
            , ".")
         .unwrap()
        .build();


    let mut linker = wasmtime::Linker::new(&engine);
    wasmtime_wasi::add_to_linker(&mut linker, |s|s).unwrap();
    unsafe {_mm_mfence();};


    // TODO to lock the traces should be an option

    // The following options is to enable and disable the tracing from the executed binary as well
    let linker = linker
        .func_wrap("env", "unlock", |_caller: wasmtime::Caller<'_, _>| unsafe {
            println!("unlocking");
            set_lock(0)
        })
        .unwrap();

    let linker = linker
        .func_wrap("env", "lock", |_caller: wasmtime::Caller<'_, _>| unsafe {
            println!("locking");
            set_lock(1)
        })
        .unwrap();

    // print the ptr of instance
    eprintln!("CTX ptr {:p}", &wasi as *const wasmtime_wasi::WasiCtx);
    let mut store = wasmtime::Store::new(&engine, wasi);
    // Thats it
    store.call_hook(/* when the wasm execution starts, then enable the recording */ |_t, tpe|{
        match tpe {
            wasmtime::CallHook::CallingHost => {
                println!("locking");
                unsafe {set_lock(1)};
            },
            wasmtime::CallHook::ReturningFromHost => {
                println!("unlocking");
                unsafe {set_lock(0)};
            }
            _ => {

            }
        }
        Ok(())
    });

        
    eprintln!("Linking module, elapsed {}ms", now.elapsed().as_millis());
    // linker.module(&mut store, "instance", &module).unwrap();

    let now = std::time::Instant::now();
    // let instance = linker.instantiate(&mut store, &module).unwrap();

    let instance = linker.instantiate(&mut store, &module).expect("Module cannot instantiate");
    
    
    let func = instance
            .get_func(&mut store, "_start")
            .unwrap()
            .typed::<(), ()>(&mut store)
            .unwrap();

    func.call(&mut store, ())
        .unwrap();
    
    // Get the address of the globals in the instance if any


    eprintln!("Execution elapsed {}ms", now.elapsed().as_millis());
    let now = std::time::Instant::now();
    unsafe {set_lock(1)};
    eprintln!("Locking time {}", now.elapsed().as_millis());


    eprintln!("-> Finished");
}

pub fn main() {
    match disable_aslr() {
        Ok(_) => println!("ASLR disabled successfully."),
        Err(e) => eprintln!("Error: {}", e),
    }
    let now = std::time::Instant::now();
    // Attacjh this process to the shared mem
    unsafe { attach() };

    let args: Vec<String> = std::env::args().collect();

    let path = args.get(1).expect("Pass the wasm file as the first argument");
    eprintln!("Before execution {}ms", now.elapsed().as_millis());
    execute_wasm(path.clone());
    // execute_wasm(path.clone());
}

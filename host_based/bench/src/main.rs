use clap::Parser;
use std::path::PathBuf;
use std::arch::asm;

use wasmtime_wasi::WasiCtxBuilder;
/// # Benching for wasm-mutate. Output is in stderr in csv format 'wasm size, mc size, comp time, mc time'
///
/// ## Example
/// `bench i.wasm -c 100`
///
#[derive(Parser, Clone)]
struct Options {
    /// The input folder that contains the Wasm binaries.
    input: PathBuf,

    /// Number of times to run the benchmark.
    #[clap(short, long, default_value = "1")]
    count: usize,

    ///Discard first x runs.
    #[clap(short, long, default_value = "0")]
    discard: usize,
}

pub fn main(){
    // Init logs
    env_logger::init();

    let opts = Options::parse();

    let opsclone = opts.clone();

    benchit(&opts.input, opts.count, opts.discard);
}


fn get_current_working_dir() -> std::io::Result<std::path::PathBuf> {
    std::env::current_dir()
}


    /// Creates the WASI support
    pub fn create_linker(engine: &wasmtime::Engine) -> wasmtime::Linker<wasmtime_wasi::WasiCtx> {
        let mut linker = wasmtime::Linker::new(&engine);

        wasmtime_wasi::add_to_linker(&mut linker, |s| s).unwrap();
        // These methods are not in WASI by default, yet, let us assume they are
        // It is the same assumption of Swivel
        
        linker.clone()
    }

fn single_pass(input_wasm: &PathBuf, output: bool) {
    // Create the engine
    // Get the size of the file given the pathbuf
    let pathcp = input_wasm.clone();
    let wsize = std::fs::metadata(&pathcp).unwrap().len();
    let mut config = wasmtime::Config::default();
    let config = config.strategy(wasmtime::Strategy::Cranelift);
    // We need to save the generated machine code to disk

    // Create a new store
    let engine = wasmtime::Engine::new(&config).unwrap();

    let now = std::time::Instant::now();
    let module =  wasmtime::Module::from_file(&engine, pathcp.clone()).unwrap();
    let comlapsed = now.elapsed().as_nanos();

    // Serialize it
    let serialized = module.serialize().unwrap();
    let size = serialized.len();
    
    // Execute it now

    let folder_of_bin = get_current_working_dir().unwrap().display().to_string();
    println!("Preopening {}", folder_of_bin);

    let wasi = WasiCtxBuilder::new()
        .inherit_stdio()
        // Preopen in the CWD 
        .preopened_dir(
            wasmtime_wasi::sync::Dir::open_ambient_dir(folder_of_bin.clone(), wasmtime_wasi::sync::ambient_authority()).unwrap()
            , ".")
         .unwrap()
         .preopened_dir(
            wasmtime_wasi::sync::Dir::open_ambient_dir(
                "./",
                wasmtime_wasi::sync::ambient_authority(),
            )
            .unwrap(),
            "./",
        )
        .unwrap()
        .preopened_dir(
            wasmtime_wasi::sync::Dir::open_ambient_dir(
                folder_of_bin.clone(),
                wasmtime_wasi::sync::ambient_authority(),
            )
            .unwrap(),
            "./"
        )
        .unwrap()
        .build();


    let mut linker = wasmtime::Linker::new(&engine);
    let now = std::time::Instant::now();
    wasmtime_wasi::add_to_linker(&mut linker, |s|s).unwrap();
    let elapsed_linking = now.elapsed().as_millis();

    let mut store = wasmtime::Store::new(&engine, wasi);
        
    println!("Linking module, elapsed {}ms", elapsed_linking);
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

    let execution_elapsed = now.elapsed().as_nanos();

    if output {
        eprint!("{}," , pathcp.display());
        eprint!("{},", wsize);
        eprint!("{},", size);
        eprint!("{},", comlapsed);
        eprintln!("{}", execution_elapsed);
    }
}

fn benchit(input_wasm: &PathBuf, count: usize, discard: usize) {
    // Compile it and measure
    // Create the engine
    for i in 1..=count {
        single_pass(input_wasm, i > discard);
    }
}

#[cfg(test)]
mod test {
    use clap::Parser;

    #[test]
    fn test_bench() {
        let mut opts = super::Options {
            input: std::path::PathBuf::from("tests/i2.wasm"),
            count: 100,
            discard: 0,
        };
        super::benchit(&opts.input, opts.count, opts.discard);
    }
}
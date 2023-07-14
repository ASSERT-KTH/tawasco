#![no_main]
//! Take a random wasm file from the corpus and mutate it, then, it tries to perform the same defined operation...in this case 
//! printing a Wasm to Wat
//! 
#[macro_use] extern crate libfuzzer_sys;
extern crate arbitrary;
extern crate env_logger;
extern crate wasmparser;

use arbitrary::*;
use libfuzzer_sys::*;
use std::sync::atomic::{AtomicU64, Ordering};
use wasmparser::WasmFeatures;
use std::io::{Read, Write};

static NUM_RUNS: AtomicU64 = AtomicU64::new(0);
static NUM_SUCCESSFUL_MUTATIONS: AtomicU64 = AtomicU64::new(0);

// Struct to randomly select a file and a number of stacked transformantions
#[derive(Clone, Debug)]
#[derive(arbitrary::Arbitrary)]
pub struct StackingChoice {
    /// Select a file from the corpus. Up to the CROW corpus size ?
    #[arbitrary(with = |u: &mut Unstructured| u.int_in_range(0..=500))]
    pub file_to_mutate: usize,
    /// Stack a certain number of mutations, no more than 10000 mutations
    #[arbitrary(with = |u: &mut Unstructured| u.int_in_range(1..=10000))]
    pub number_of_mutations: usize,
    /// Seed for wasm-mutate
    pub seed: u64,
}

// Oracle to perform diff testing
trait Oracle<T> {
    /// Gets the name of the oracle
    fn get_name() -> String;
    /// Gets the command of the oracle
    fn get_command() -> String;
    /// Run the oracle and return its result (usually its stdout)
    fn run(wasm: &[u8]) -> Result<T, anyhow::Error>;    
}

struct WasmToolsPrinter;
struct WabtPrinter;
struct BinaryenPrinter;

impl Oracle<String> for WasmToolsPrinter {
    fn get_name() -> String {
        String::from("wasm-tools")
    }

    fn get_command() -> String {
        String::from("wasm-tools print")
    }

    fn run(wasm: &[u8]) -> Result<String, anyhow::Error> {
        Ok(wasmprinter::print_bytes(wasm)?)
    }
}

impl Oracle<String> for BinaryenPrinter {
    fn get_name() -> String {
        String::from("binaryen wasm-dis")
    }

    fn get_command() -> String {
        String::from("wasm-dis")
    }

    // Ideally we should be able of linking binaryen directly to this tool
    // For now we are just calling a process
    fn run(wasm: &[u8]) -> Result<String, anyhow::Error> {
       
       // Write the wasm to a file to a tmp file
      let mut tmpfile = tempfile::NamedTempFile::new()?;
      tmpfile.write_all(wasm)?;
      // Create another tmp file to write the result
     let mut tmpfile2 = tempfile::NamedTempFile::new()?;
     let output = std::process::Command::new("wasm-dis")
        .args(&[
            tmpfile.path().to_str().unwrap(),
            "-o",
            tmpfile2.path().to_str().unwrap(),
        ])
        .stdin(std::process::Stdio::null())
        .stdout(std::process::Stdio::piped())
        .stderr(std::process::Stdio::piped())
        .output()?;

     // Read the file
      let mut result = String::new();
        tmpfile2.read_to_string(&mut result)?;
        Ok(result)
    }

}

fuzz_target!(|choice: StackingChoice| {
    let _ = env_logger::try_init();

    // Take a random Wasm from the corpus
    // First list the files in the corpus
    let files = std::fs::read_dir("corpus_wasm/CROW").unwrap();
    let mut files: Vec<_> = files.map(|f| f.unwrap()).collect();
    // Then take a random file modulo the number of files
    let file_to_mutate = choice.file_to_mutate % files.len();
    let file_to_mutate = files[file_to_mutate].path();


    // Then read the file
    let wasm = std::fs::read(file_to_mutate.clone()).unwrap();
    // Mutate it, stack several mutations

    log::debug!("Mutating {}, {} times", file_to_mutate.display(), choice.number_of_mutations);

    // Now we use the stacking crate to mutate it :)
    let mut stack = stacking::main::Stacking::new(
        wasm.clone(), 
        choice.number_of_mutations,
        choice.number_of_mutations,
        choice.seed,
        true,
        String::from("fuzz_cache"),
        vec![],
        false,
        0,
        false,
        false,
        3,
        false,
        false,
        None
    );
    // Do run the mutations
    loop {
        stack.next(|new, parent|{
            let oraclewasmtime = WasmToolsPrinter::run(new);
            let oraclebinaryen = BinaryenPrinter::run(new);

            match (oraclewasmtime, oraclebinaryen) {
                (Ok(w1), Ok(w2)) => {
                    // We do nothing, they might differ, but the textual format is not unique
                    // Compiling back might be a nice idea here :)
                }
                (Err(e1), Err(e2)) => {
                    panic!("Both panicked")
                }
                // The first differential case is that they do not run
                (Ok(w1), Err(e2)) => {
                    // Save the wasm file
                    let wasmcrash = format!("crash.binaryen.mutation.wasm");
                    std::fs::write(wasmcrash, new).unwrap();
                    let original = format!("crash.binaryen.original.wasm");
                    std::fs::write(original, parent).unwrap();
                    let msgfile = format!("crash.binaryen.msg.txt");
                    std::fs::write(msgfile, format!("{:?}", e2)).unwrap();
                    panic!("wasmtools failing");
                }
                // The first differential case is that they do not run
                (Err(e1), Ok(w2)) => {
                    let wasmcrash = format!("crash.wasmtools.mutation.wasm");
                    std::fs::write(wasmcrash, new).unwrap();
                    let original = format!("crash.wasmtools.original.wasm");
                    std::fs::write(original, parent).unwrap();
                    // Write 
                    let msgfile = format!("crash.wasmtools.msg.txt");
                    std::fs::write(msgfile, format!("{:?}", e1)).unwrap();
                    panic!("binaryen failing");
                }

            }
            // We evaluate the oracles with new here
        });

        if stack.index == choice.number_of_mutations {
            break;
        }
    }


    // Perform the same operation with: wabt, wasm-tools print and binaryen

    // Compare the results
    // Panic if they differ. Option 2: Save the crash and continue. Categorie the error in a post processing phase
});

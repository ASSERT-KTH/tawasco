use std::path::Path;
use std::fs;
use std::fs::File;
use flate2::read::GzDecoder;
use tar::Archive;

fn main() {
    
    // Download pintool if it does not exist
    // Set the download tool, curl either wget if one is installed
    let downloader = match std::env::consts::OS {
        "linux" => "curl",
        "macos" => "curl",
        "windows" => "wget",
        _ => panic!("Unsupported OS"),
    };
    let absolute_path = std::env::current_dir().unwrap();
    let absolute_path = format!("{absolute_path}", absolute_path=absolute_path.display());

    
    let pinversion= match std::env::consts::OS {
        // https://software.intel.com/sites/landingpage/pintool/downloads/pin-3.28-98749-g6643ecee5-gcc-linux.tar.gz
        "linux" => format!("pin-3.28-98749-g6643ecee5-gcc-linux"),
        // https://software.intel.com/sites/landingpage/pintool/downloads/pin-3.25-98650-g8f6168173-clang-mac.tar.gz
        "macos" => format!("pin-3.25-98650-g8f6168173-clang-mac"),
        "windows" => format!("pin-3.28-98749-g6643ecee5-msvc-windows"),
        _ => panic!("Unsupported OS"),
    };
    let pintool_path = format!("{absolute_path}/pintool/{pinversion}");
    eprintln!("Pintool should be at {}", pintool_path);
    let pintool_path = Path::new(&pintool_path);
    let pintool_path_final = format!("{absolute_path}/pintool/pin");
    let pintool_path_final = Path::new(&pintool_path_final);
    
    if !pintool_path_final.exists() {
        // Disernate the OS
        let os = std::env::consts::OS;
        let url = match os {
            "linux" => format!("https://software.intel.com/sites/landingpage/pintool/downloads/{pinversion}.tar.gz"),
            "macos" => format!("https://software.intel.com/sites/landingpage/pintool/downloads/{pinversion}.tar.gz"),
            "windows" => format!("https://software.intel.com/sites/landingpage/pintool/downloads/{pinversion}.zip"),
            _ => panic!("Unsupported OS"),
        };
        // Call the downloader 
        eprintln!("Downloading pintool");
        let url = format!("{} {} pin.tar.gz {}", url, match downloader {
            "curl" => "-o",
            "wget" => "-O",
            _ => panic!("Unsupported downloader"),
        }, pintool_path.to_str().unwrap());
        eprintln!("url {:?}", url);
        // Calling the process
        let _ = std::process::Command::new(downloader)
            .args(url.split(" "))
            .output()
            .expect("failed to download pintool process");

        let tar_gz = File::open("pin.tar.gz").unwrap();
        eprintln!("Extracting pintool");
        let tar = GzDecoder::new(tar_gz);
        let mut archive = Archive::new(tar);
        
        archive.unpack("pintool").unwrap();
        // after unpack change the folder name
        let _ = std::process::Command::new("mv")
            .args([
                format!("pintool/{pinversion}", pinversion=pinversion),
                format!("pintool/pin"),
            ])
            .output()
            .expect("failed to rename pintool folder");
        fs::remove_file("pin.tar.gz").unwrap();
    }
    // We link the bridge to the current wasmtime interpreter usage
    // This code just contains the C code to interact with the shmem
    cc::Build::new()
        .include("pintool/common")
        // .file("pintool/common/common.c")
        .file("pintool/pintool_bridge.c")
        .compile("pintool_bridge");
    

    
    println!("cargo:rerun-if-changed=pintool/pintool_bridge.c");
    println!("cargo:rerun-if-changed=pintool/common/common.c");
    println!("cargo:rustc-link-lib=pintool_bridge");
    
    // Compile the pintool tracer as well from here
    // Call make to build pintool
    let out = std::process::Command::new("make")
    .args([
        "clean-all"
    ])
    .current_dir("pintool")
    // Set env
    .env("PIN_ROOT", &pintool_path)
    .output()
    .expect("failed to clean pintool");

    let out = std::process::Command::new("make")
    .args([
        "all"
    ])
    // Set env
    .env("PIN_ROOT", &pintool_path)
    .current_dir("pintool")
    .output()
    .expect("failed to build pintool");

    // print the output of the previous called process
    eprintln!("{}", String::from_utf8_lossy(&out.stdout));
    eprintln!("{}", String::from_utf8_lossy(&out.stderr));

    // If compiles, copy the pin binary to the project folder

    // After compiling, copy the pin bin and the lib to this folder root, and emit a message about how ot tuse it
    // Copy the pintool to the root
    
    println!("cargo:rerun-if-changed=pintool/Makefile");
    println!("cargo:rerun-if-changed=pintool/tracer.cpp");
    println!("cargo:rerun-if-changed=build.rs");
}
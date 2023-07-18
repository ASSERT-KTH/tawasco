use wasmtime::*;
extern crate libc;
use libc::c_void;
use std::sync::Mutex;
use std::sync::Arc;
use std::ops::Range;

const PAD: usize = 16;
const SCALE: usize = 1;
static mut STATIC_ADDRESS: *mut c_void = 0x2000_0000 as *mut c_void;
static mut STATIC_ADDRESS2: *mut c_void = 0x1000_0000 as *mut c_void;


#[no_mangle]
pub fn notify_mem(ptr: *mut libc::c_void, size: usize){
    eprintln!("Executable memory at {:?}({})", ptr, size);
}

// This is to replace the reserve for wasmtime 
#[no_mangle]
pub fn custom_reserve(size: usize) -> *mut libc::c_void {
    let ptr = unsafe {
        let r = rustix::mm::mmap_anonymous(
            STATIC_ADDRESS,
            size,
            rustix::mm::ProtFlags::empty(),
            rustix::mm::MapFlags::PRIVATE | rustix::mm::MapFlags::FIXED,
        ).expect("Memory could not be allocated");
        STATIC_ADDRESS = STATIC_ADDRESS.add(size + PAD);
        r
    };
    
    eprintln!("allocating at {:?}", ptr);
    ptr

}

// This is to replace the allocate for wasmtime 
#[no_mangle]
pub fn custom_allocator(size: usize) -> *mut libc::c_void {
    unsafe { eprintln!("allocating at {:?} ({})", STATIC_ADDRESS2, size*SCALE) };

    let ptr = unsafe {
        let r = rustix::mm::mmap_anonymous(
            STATIC_ADDRESS2,
            size*SCALE,
            rustix::mm::ProtFlags::READ | rustix::mm::ProtFlags::WRITE,
            rustix::mm::MapFlags::PRIVATE, // rustix::mm::MapFlags::FIXED,
        ).expect("Memory could not be allocated");
        STATIC_ADDRESS2 = STATIC_ADDRESS2.add(size*SCALE + PAD);
        r
    };
    
    ptr

}

// This is to replace the allocate file for wasmtime 
#[no_mangle]
pub fn custom_file_allocator(size: usize, file: &std::fs::File) -> *mut libc::c_void {
    eprintln!("Allocating file");
    let ptr = unsafe {
        let r = rustix::mm::mmap(
            STATIC_ADDRESS,
            size,
                rustix::mm::ProtFlags::READ | rustix::mm::ProtFlags::WRITE,
                rustix::mm::MapFlags::PRIVATE, // | rustix::mm::MapFlags::FIXED,
                &file,
                0,
            ).expect("Memory could not be allocated");
            STATIC_ADDRESS = STATIC_ADDRESS.add(size + PAD);
        r
    };
    ptr
}


pub struct MemoryAllocator;

pub struct OwnMemory  {
    pub ptr: Arc<Mutex<*mut u8>>,
    pub size: usize
}

unsafe impl Send for OwnMemory {}
unsafe impl Sync for OwnMemory {}

unsafe impl wasmtime::LinearMemory for OwnMemory {
    
    fn byte_size(&self) -> usize {
        self.size
    }

    fn maximum_byte_size(&self) -> Option<usize> {
        Some(self.size)
    }

    fn wasm_accessible(&self) -> Range<usize> {
        0..self.size + 1
    }

    fn as_ptr(&self) -> *mut u8 {
        self.ptr.lock().unwrap().clone()
    }

    fn grow_to(&mut self, _new_size: usize) -> Result<()> {
        Ok(())
    }


}

impl OwnMemory {


    pub fn new(ptr: *mut u8, size: usize) -> Self {
        Self {
            ptr: Arc::new(Mutex::new(ptr)), size
        }
    }
}

unsafe impl wasmtime::MemoryCreator for MemoryAllocator {

    fn new_memory(
        &self,
        _ty: MemoryType,
        minimum: usize,
        maximum: Option<usize>,
        reserved_size_in_bytes: Option<usize>,
        _guard_size_in_bytes: usize
    ) -> Result<Box<dyn LinearMemory>, String> {
        // eprintln!("ty {:?}", ty);
        eprintln!("reserved_size_in_bytes {:?}", reserved_size_in_bytes);
        let psize: f32 = 1.0;
        let total_bytes = match maximum {
            Some(max) => (max as f32 *psize) as usize,
            None => (minimum as f32*psize) as usize,
        };
        eprintln!("total_bytes {:?}", total_bytes);

        unsafe { eprintln!("mem at {:?}({})", STATIC_ADDRESS, total_bytes) };
        
        let mem = unsafe {
            let r = rustix::mm::mmap_anonymous(
                STATIC_ADDRESS,
                total_bytes,
                rustix::mm::ProtFlags::READ | rustix::mm::ProtFlags::WRITE,
                rustix::mm::MapFlags::PRIVATE, // | rustix::mm::MapFlags::FIXED,
            ).expect("Memory could not be allocated");
            STATIC_ADDRESS = STATIC_ADDRESS.add(total_bytes + PAD);
            r
        };

        let linearmem = OwnMemory::new(mem as *mut u8, total_bytes);

        
        Ok(Box::new(linearmem))
    }
}


pub fn get_current_working_dir() -> std::io::Result<std::path::PathBuf> {
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

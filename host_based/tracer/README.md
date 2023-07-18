## IntelPIN tracer for wasmtime execution

- We pause and unpause traces with entering and exiting to and from Wasm generated code
- We trace every instruction, including memory accesses
- We create a linear memory allocation for the wasmtime based host


## How to

After running `cargo build --release`, run `cd pintool/pin-3.* && ./pin.bin -t obj-intel64/tracer.so -o trace.txt -i 1 -m 1 -- ./target/release/tracer ./hello.wasm`
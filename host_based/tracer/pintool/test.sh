./pin/pin -t obj-intel64/tracer.so -o instructions.txt -c 1 -i 1 -m 0 -b 0 -- ${ROOT}/host_based/target/x86_64-unknown-linux-gnu/release/tracer ../tests/wasms/wb_challenge.wasm 0x00 0x01 0x02 0x03 0x04 0x05 0x06 0x07 0x08 0x09 0x0a 0x0b 0x0c 0x0d 0x0e 0x0f 
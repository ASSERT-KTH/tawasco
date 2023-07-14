# Very basic one
./pin.bin -t intel64.tracer.so -- ls || echo "Failed to run ls" && exit 1

# Test executing the wasm file
./pin.bin -t intel64.tracer.so -- ./wasm_exec.js ./hello.wasm || echo "Failed to run wasm_exec.js" && exit 1
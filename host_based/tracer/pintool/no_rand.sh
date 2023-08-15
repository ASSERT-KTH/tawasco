#!/bin/bash
#  
# Your application's path and its arguments
echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

APP_PATH="../../target/release/tracer"
APP_ARGS="../tests/wasms/wb_challenge.wasm  0x00 0x01 0x02 0x03 0x04 0x05 0x06 0x07 0x08 0x09 0x0a 0x0b 0x0c 0x0d 0x0e 0x0f"

# Path to your Pintool
PIN_TOOL="obj-intel64/tracer.so"

# Start your application with gdb, disable randomization, and run in the background
gdb -ex "set disable-randomization on" --ex "shell sleep 12" -ex "r"  --args $APP_PATH $APP_ARGS &

# Wait a few seconds to ensure the app has started
sleep 2
ps -aux | grep $APP_PATH
# Get the process ID of your application
APP_PID=$(pgrep -f $APP_PATH)

# Attach Intel PIN to the running process
./pin/pin  -injection child -pid $APP_PID -t $PIN_TOOL -o all.no-rand.txt -c 1 -C -i 1 -m 1 -b 1 

# Wait for the Pintool to finish its execution
wait $!

echo "Done"

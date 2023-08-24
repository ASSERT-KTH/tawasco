trace_file=$1
wasm=$2


/host_based/tracer/pintool/pin/pin -t /host_based/tracer/pintool/obj-intel64/tracer.so -i 1 -m 0 -c 1 -b 1  -o trace.ins.txt -- tracer $wasm

# check if the trace.ins.txt is the same as the trace_file, return 1 if they are the same
if cmp -s "trace.ins.txt" "$trace_file"; then
    echo "Different trace"
    exit 1
else
    exit 0
fi



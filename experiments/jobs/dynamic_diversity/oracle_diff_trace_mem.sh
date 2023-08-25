trace_file=$1
wasm=$2


/host_based/tracer/pintool/pin/pin -t /host_based/tracer/pintool/obj-intel64/tracer.so -i 0 -m 1 -M 0 -c 0 -b 0 -o trace.mem.txt -- tracer $wasm

md5sum trace.mem.txt
md5sum "$trace_file"

# check if the trace.ins.txt is the same as the trace_file, return 1 if they are the same
if cmp -s "trace.mem.txt" "$trace_file"; then
    echo "Same trace"
    exit 1
else
    exit 0
fi




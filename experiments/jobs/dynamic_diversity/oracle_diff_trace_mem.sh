trace_file=$1
wasm=$2

echo "$trace_file $wasm" > trace.txt

/host_based/tracer/pintool/pin/pin -t /host_based/tracer/pintool/obj-intel64/tracer.so -i 0 -m 1 -M 0 -c 0 -b 0 -o trace.mem.txt -- tracer $wasm

md5sum trace.mem.txt > trace.mem.txt.md5
md5sum $trace_file > $trace_file.md5
# remove the file name from the md5sum
sed -i 's/  trace.mem.txt//g' trace.mem.txt.md5
sed -i 's/  $trace_file//g' $trace_file.md5

# check if the trace.ins.txt is the same as the trace_file, return 1 if they are the same
if cmp -s "trace.mem.txt.md5" "$trace_file.md5"; then
    echo "Same trace"
    exit 1
else
    exit 0
fi




trace_file=$1
wasm=$2


/host_based/tracer/pintool/pin/pin -t /host_based/tracer/pintool/obj-intel64/tracer.so -i 1 -m 0 -c 1 -b 1  -o trace.ins.txt -- tracer $wasm

# check if the trace.ins.txt is the same as the trace_file, return 1 if they are the same
# check the md5sum of the trace.ins.txt and trace_file
md5sum trace.ins.txt > trace.ins.txt.md5
md5sum $trace_file > $trace_file.md5
# remove the file name from the md5sum
sed -i 's/  trace.ins.txt//g' trace.ins.txt.md5
sed -i 's/  $trace_file//g' $trace_file.md5
# check if the md5sum is the same
if cmp -s "trace.ins.txt.md5" "$trace_file.md5"; then
    echo "Same trace"
    exit 1
else
    exit 0
fi



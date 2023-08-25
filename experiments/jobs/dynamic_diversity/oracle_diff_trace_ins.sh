trace_file=$1
wasm=$2


/host_based/tracer/pintool/pin/pin -t /host_based/tracer/pintool/obj-intel64/tracer.so -i 1 -m 0 -c 1 -b 1  -o trace.ins.txt -- tracer $wasm


md5sum trace.ins.txt
md5sum "$trace_file"

hash1=$(sha256sum trace.ins.txt | cut -d ' ' -f 1)
hash2=$(sha256sum "$trace_file" | cut -d ' ' -f 1)

# check if the trace.ins.txt is the same as the trace_file, return 1 if they are the same
# check the md5sum of the trace.ins.txt and trace_file
# check if the md5sum is the same
if [ "$hash1" != "$hash2" ]
then
    echo "Dif trace"
    exit 1
else
    exit 0
fi



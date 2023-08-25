trace_file=$1
wasm=$2

function sim(){
   tr1=$1
   tr2=$2

   different_lines=$(diff -U 0 $tr1 $tr2 | grep -v ^@ | wc -l)
   total_lines=$(wc -l < $tr1) && total_lines=$((total_lines + $(wc -l < $tr2)))
   similarity=$((100 - (100 * diff_lines) / total_lines))
   echo $similarity
}

/host_based/tracer/pintool/pin/pin -t /host_based/tracer/pintool/obj-intel64/tracer.so -i 1 -m 0 -c 1 -b 1  -o trace.ins.txt -- tracer $wasm


md5sum trace.ins.txt
md5sum "$trace_file"

hash1=$(sha256sum trace.ins.txt | cut -d ' ' -f 1)
hash2=$(sha256sum "$trace_file" | cut -d ' ' -f 1)

diffy=$(sim trace.ins.txt "$trace_file")
echo "Sim" $diffy

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



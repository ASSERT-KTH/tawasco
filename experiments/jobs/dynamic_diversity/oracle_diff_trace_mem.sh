trace_file=$1
wasm=$2

function sim(){
   tr1=$1
   tr2=$2

   different_lines=$(diff -U 0 $tr1 $tr2 | grep -v ^@ | wc -l)
   total_lines=$(wc -l < $tr1) && total_lines=$((total_lines + $(wc -l < $tr2)))
   #similarity=$((100 - (100 * diff_lines) / total_lines))
   similarity=$(echo "scale=12; (100.0 - (100.0 * $different_lines) / $total_lines)" | bc)
   echo $similarity
}

/host_based/tracer/pintool/pin/pin -t /host_based/tracer/pintool/obj-intel64/tracer.so -i 0 -m 1 -M 0 -c 0 -b 0 -o trace.mem.txt -- tracer $wasm

md5sum trace.mem.txt
md5sum "$trace_file"

hash1=$(sha256sum trace.mem.txt | cut -d ' ' -f 1)
hash2=$(sha256sum "$trace_file" | cut -d ' ' -f 1)

diffy=$(sim trace.mem.txt "$trace_file")
echo "Sim mem" $diffy
th=80.0
# check if the trace.ins.txt is the same as the trace_file, return 1 if they are the same
# check the md5sum of the trace.ins.txt and trace_file
# check if the md5sum is the same
if (( $(echo "$diffy <= $th" | bc -l) ))
then
    echo "Dif trace"
    exit 1
else
    exit 0
fi







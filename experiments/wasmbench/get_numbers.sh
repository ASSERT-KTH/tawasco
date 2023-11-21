
function execute(){
    I=$1
    O=$2

    ../../host_based/target/release/bench  --count 100 --discard 20 $I 2>>$O
}

for w in $(ls variants)
do
    mkdir -p perf
    echo "Name,Wsize,MCSize,CPTime,Extime" > perf/$w.out.txt
    for f in $(ls variants/$w)
    do
        echo $f
        if [[ $f == *.wasm ]]
        then
            echo "Executing $f"
            execute variants/$w/$f perf/$w.out.txt
        fi
    done
    exit 1

done
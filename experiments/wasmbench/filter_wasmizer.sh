
mkdir -p ran_wasmizer
I=0
C=0
for w in $(find wasmizer -name "*.wasm")
do
    echo $C/$I "$w"
    timeout --foreground 300 wasmtime run --invoke _start $w  > $(basename $w).out.txt 2>&1
    EXITCODE=$?
    # get exit code

    # if exit code is 0, then it is a valid wasm file
    if [[ $EXITCODE -eq 0 ]]
    then
        cp $w ran_wasmizer/
        cat "$(basename $w).out.txt"
        cp "$(basename $w).out.txt" ran_wasmizer/
        C=$((C+1))
    fi
    rm  $(basename $w).out.txt
    I=$((I+1))
done
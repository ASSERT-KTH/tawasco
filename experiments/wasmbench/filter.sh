
if [[ ! -f filetered.7z ]]
then
    wget -O filetered.7z https://github.com/sola-st/WasmBench/releases/download/v1.0/filtered-binaries-metadata.7z
fi

# decompress

if [[ ! -d filtered ]]
then
    7zz x filetered.7z
fi

mkdir -p ran
I=0
C=0
for w in filtered/*.wasm
do
    echo $C/$I "$w"
    timeout --foreground 120 wasmtime run --dir . --invoke _start $w  > $(basename $w).out.txt 2>&1
    EXITCODE=$?
    # get exit code

    # if exit code is 0, then it is a valid wasm file
    if [[ $EXITCODE -eq 0 ]]
    then
        cp $w ran/
        cat "$(basename $w).out.txt"
        cp "$(basename $w).out.txt" ran/
        C=$((C+1))
    fi
    rm  $(basename $w).out.txt
    I=$((I+1))
done
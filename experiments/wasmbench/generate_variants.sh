RANDOM=7878

mkdir -p variants

function download_stacking(){
    echo Downloading the stacking tool...
    # Download the stacking tool
    VERSION="0.8.0"
    if [[ ! -f stacking.${VERSION}.gz ]]; then
        if [[ "$(uname -s)" == "Darwin" ]]; then
            curl --fail --location --silent https://github.com/ASSERT-KTH/tawasco/releases/download/0.8.0/stacking-all-x86_64-macos-${VERSION}.gz --output stacking.${VERSION}.gz || exit 1
            7Z=7zz
        else
            curl --fail --location --silent https://github.com/Jacarte/tawasco/releases/download/${VERSION}/stacking-all-x86_64-linux-${VERSION}.gz --output stacking.${VERSION}.gz || exit 1
            7Z=7z
        fi
        $7Z x stacking.${VERSION}.gz || exit 1
        chmod +x stacking
    fi
}

function stack(){
    
    INPUT=$1
    FOLDER=$2
    ITER=$3
    SEED=$4
    if [[  -f $FOLDER/bin.$ITER.$SEED.999.wasm ]]
    then
        echo "Already stacked"
        return
    fi
    COUNT=1000
    # report-only-if-diff-mc
    RUST_LOG=wasm_mutate=debug ../../host_based/target/release/stacking $INPUT $FOLDER/bin.$ITER.$SEED --check-mem --seed $SEED -c $COUNT -v $COUNT --check-io 2> $FOLDER/bin.$ITER.$SEED.log.txt
    
    rm $FOLDER/bin.$ITER.$SEED.0.wasm
    rm $FOLDER/bin.$ITER.$SEED.wasm

    # Execute it just to see
    echo wasmtime run --invoke _start --dir . $FOLDER/bin.$ITER.$SEED.999.wasm
    wasmtime run --invoke _start --dir . $FOLDER/bin.$ITER.$SEED.999.wasm
    EXITCODE=$?

    if [[ $EXITCODE -eq 0 ]]
    then
        echo "Valid"
    else
        echo "Invalid" $INPUT
        exit 1
    fi
}

#download_stacking

for w in ran/*.wasm
do
    mkdir -p variants/$(basename $w)

    for i in $(seq 1 30)
    do
        echo $w
        stack $w variants/$(basename $w) $i $RANDOM
        cp $w variants/$(basename $w)/original.wasm
    done

done
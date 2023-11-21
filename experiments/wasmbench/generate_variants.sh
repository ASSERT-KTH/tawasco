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


echo "" > stacked.txt

echo "" > no-stacked.txt

function stack(){
    
    INPUT=$1
    FOLDER=$2
    ITER=$3
    SEED=$4
    if [[  $(find $FOLDER -name "bin.$ITER.*.999.wasm" | wc -l) -gt 0 ]]
    then
        echo "Already stacked"

        return
    fi
    COUNT=1000
    # report-only-if-diff-mc
    ../../host_based/target/release/stacking --cache-folder "/Volumes/Samsung Portable/cache_WM$SEED" $INPUT $FOLDER/bin.$ITER.$SEED --seed $SEED -c $COUNT -v $COUNT > /dev/null
    
    rm $FOLDER/bin.$ITER.$SEED.0.wasm
    rm $FOLDER/bin.$ITER.$SEED.wasm

    # Execute it just to see
    echo wasmtime run --invoke _start --dir . $FOLDER/bin.$ITER.$SEED.999.wasm
    timeout --foreground 30 wasmtime run --invoke _start --dir . $FOLDER/bin.$ITER.$SEED.999.wasm
    EXITCODE=$?

    if [[ $EXITCODE -eq 0 ]]
    then
        echo "Valid"
    else
        echo "Invalid" $INPUT
    fi

}
function get(){
    json=$1
    key=$2
    path=$3
    python -c "import json; data=json.load(open('$json')); print(data['$key']$path)"
}

ITER=50
#download_stacking
for w in ran/*.wasm
do
    echo $w
    FOLDER=variants/$(basename $w)
    NAME=$(basename $w .wasm)
    find  $FOLDER -name "bin.$ITER.*.999.wasm" | wc -l
    if [[  $(find  $FOLDER -name "bin.$ITER.*.999.wasm" | wc -l) -gt 0 ]]
    then
        echo "Already stacked" $w

        echo "Already stacked " $FOLDER $(find  $FOLDER -name "bin.*.999.wasm" | wc -l) >> stacked.txt 
    else

        echo "No stacked " $FOLDER >> no-stacked.txt 
    fi
done

function doit(){
    i=$1
    w=$2
    s=$3

    stack $w variants/$(basename $w) $i $s
    cp $w variants/$(basename $w)/original.wasm
}

#exit 1

for w in $(cat process.txt)
do
    w=ran/$w
    mkdir -p variants/$(basename $w)

    I=0
    for i in $(seq 1 $ITER)
    do
        S=$RANDOM
        doit $i $w $S &
        I=$((I+1))

        if [[ $I -eq 10 ]]
        then
            echo "Waiting for 10"
            wait
            I=0
        fi
        echo $w
    done
done

echo "" > count.txt

MIN=40000000
MAX=0
for w in ran/*.wasm
do
    echo -n $w " " >> count.txt
    $WASM2WAT $w --enable-all -v -o /dev/null 2> out.txt
    grep "OnFunctionBodyCount" out.txt
    val=$(grep "OnFunctionBodyCount" out.txt | sed 's/.*OnFunctionBodyCount\([0-9]*\)/\1/g')
    
    # turn val into a number
    val=$((val+0))

    if [[ $val -lt $MIN ]]
    then
        MIN=$val
    fi

    if [[ $val -gt $MAX ]]
    then
        MAX=$val
    fi

    echo $val >> count.txt 
done

echo $MAX >> count.txt
echo $MIN >> count.txt
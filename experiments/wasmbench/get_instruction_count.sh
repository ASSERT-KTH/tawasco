MINI=4000000000
MAXI=0

MINS=60000000000
MAXS=0


I=0
while IFS="," read name filename source stars method size_bytes instruction_count out
do
    

    
    echo $I $instruction_count $size_bytes

    if [[ $instruction_count -lt $MINI ]]
    then
        MINI=$instruction_count
    fi

    if [[ $instruction_count -gt $MAXI ]]
    then
        MAXI=$instruction_count
    fi

    if [[ $size_bytes -lt $MINS ]]
    then
        MINS=$size_bytes
    fi

    if [[ $size_bytes -gt $MAXS ]]
    then
        MAXS=$size_bytes
    fi

    I=$((I + 1))
done < meta.csv

echo $MINI $MAXI $MINS $MAXS
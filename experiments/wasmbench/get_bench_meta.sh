echo "sha,filename,source,stars,method,size_bytes,instruction_count,out[:20]" > meta.csv

function get(){
    json=$1
    key=$2
    path=$3
    python -c "import json; data=json.load(open('$json')); print(data['$key']$path)"
}

for w in ran/*.wasm
do

    OUTPUT=$(cat ran/$(basename $w).out.txt)
    # Get only the first 20 characters of the output
    SH=$(echo "$OUTPUT" | cut -c1-20)
    # Escape SH
    SH=$(echo $SH | sed 's/"/\\"/g')
    # Get the first 20 characters of SH
    SH=$(echo $SH | cut -c1-20)
    # Get name without extension
    NAME=$(basename $w .wasm)
    # package

    echo $NAME,$(get filtered.pretty.json $NAME "['files'][0]['filename']"),$(get filtered.pretty.json $NAME "['files'][0]['repository']")$(get filtered.pretty.json $NAME "['files'][0]['domain']")$(get filtered.pretty.json $NAME "['files'][0]['package']"),$(get filtered.pretty.json $NAME "['files'][0]['stars']"),$(get filtered.pretty.json $NAME "['files'][0]['collection_method']"),$(get filtered.pretty.json $NAME "['size_bytes']"),$(get filtered.pretty.json $NAME "['instruction_count']"),"'$SH'" >> meta.csv



done
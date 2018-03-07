#!/bin/bash
#ej1,ej2,ej3

convert() {
count=0
last=""
patt=""
for elem in $(egrep -o . <<<"$1") ; do
    if (( $count == 0 )) ; then
        last=$elem
    else
        patt=$patt$elem
    fi
    let count++
done
pattern2=$patt$last
}

pattern=$1
move=$2
letter=$3
convert "$pattern"

    i=0
    while (( $i < $move )) ; do
        letter=$(echo $letter | tr $pattern $pattern2)
        let i++
    done

    echo $letter

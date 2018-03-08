#!/bin/bash

convert() {
	pattern2=$(echo $1 | cut -c$(($2+1))-${#1})$( echo $1 | cut -c1-$(($2)) 2>/dev/null)
}
pattern=$1
move=$2
letter=$3
if (( $move > ${#pattern} )) ; then
	move=$(($move % ${#pattern}))
	convert $pattern $move
else
	convert $pattern $move
fi
letter=$(echo $letter | tr $pattern $pattern2)
echo $letter

#!/bin/bash
echo "Dime que tabla de que numero"
read num
count=0
while (( count <= 10 )) ; do
 echo "$count x $num = $(( $count*$num ))"
 let count++
done 



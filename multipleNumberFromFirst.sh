#!/bin/bash
#programa que pida una lista de numeros y devuelva aquellos que son multiplos del primero

if (( $# < 2 )) ; then
 echo "caca" >&2
 exit 1
fi
if echo $@ | egrep -o [^0-9 ] >/dev/null ; then
 echo "mal" >&2
 exit 2
fi

numbers=$@

firstNum=$1

for num in $@ ; do
 if (( $num != $1 )) ; then
  if (( $num % $firstNum == 0 )) ; then
   echo $num
  fi 
 fi

done 

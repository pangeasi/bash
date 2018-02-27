#!/bin/bash
#programa que pida una lista de numeros y devuelva aquellos que son multiplos del primero

numbers=$@

firstNum=$1

for num in $@ ; do
 if (( $num != $1 )) ; then
  if (( $num % $firstNum == 0 )) ; then
   echo $num
  fi 
 fi

done 

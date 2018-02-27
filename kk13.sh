#!/bin/bash

read word

reverse=$(echo $word | rev)
echo $reverse
if [ "$reverse" == "$word" ] ; then
	echo "is  a palindromo"
else
	echo "It's not a palindromo"
fi

#!/bin/bash

args=$@

for num in $@ ; do
 echo $num | bash multiplicationTable.sh
done



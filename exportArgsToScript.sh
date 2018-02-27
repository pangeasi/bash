#!/bin/bash


export x=1
x=$(./externalScript.sh $x)
echo $x

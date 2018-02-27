#!/bin/bash

if (( $# < 2  )) ; then
	echo "Missing args" >&2
	exit 1
fi

greeting=$1
shift

for name in "$@" ; do

	echo $greeting $name
done

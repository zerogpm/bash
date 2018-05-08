#!/bin/bash

#Chane filename extensions

if [[ $# -ne 2 ]]; then
	echo "Need exactly two arguments"
fi

for word in *"$1"; do
	base=$(basename "$word" "$1")
	mv "$word" "${base}$2"
done 

#!/bin/bash

#create script and sets permssion

# Is there an argument?

if [[ ! $1 ]]; then
	echo "Missing argument"
	exit 1
fi

scriptname="$1"
bindir="${HOME}/bin"
filename="${bindir}/$1"

if [[ -e $filename ]]; then
	echo "File ${filename} already exists"
	exit 1
fi

if type "$scriptname"; then
	echo "There is already a command with name ${scriptname}"
	exit 1
fi

if [[ ! -d $bindir ]]; then
	#if not: create bin  directory
	if mkdir "$bindir"; then
		echo "created ${bindir}"
	else
		echo "Cannot create ${bindir}"
		exit 1
	fi
fi

echo "End of code reached"
exit 0

#!/bin/bash

# Prints standard input to standard output
# discarding all lines before the first line matching
# the string given as the first arugment.

if [[ ! $1 ]]; then
	echo "Need first argument" >&2
	exit 1
fi

found=""

# read upto first match
while read -r; do
	if [[ ! $found ]]; then
		if [[ $REPLY =~ $1 ]]; then
			found="yep"
		else
			continue
		fi
	fi
	echo "$REPLY"
done

exit 0

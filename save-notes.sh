#!/bin/bash

date=$(date)
topic=$1
filename=${topic}notes.txt

read -p "Your note: "  note

if [[ $note ]]; then
	echo $date: $note >> $filename
	echo Note $note save to $filename
else
	echo "No input; note wasn't saved" > 1>&2
fi 

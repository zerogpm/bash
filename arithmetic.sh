#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Need excatly two arguments"
  exit 1
fi

if [[ ! -d $1 ]]; then
  ehco "'$1' is not a directory"
  exit 1
fi

if [[ ! -d $2 ]]; then
  echo "'$2' is not a directory"
  exit 1
fi

dir1="$1"
dir2="$2"

#get number of files in directories
count_1=$(ls -A1 "$dir1" | wc -l)
count_2=$(ls -A1 "$dir2" | wc -l)

#which one has most files?
if [[ $count_1 -gt $count_2 ]]; then
  echo "${dir1} has most files"
elif [[ $count_1 -eq $count2 ]]; then
  echo "number of files is equal"
else
  echo "${dir2} has most files"
fi

exit 0

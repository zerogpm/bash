#!/bin/bash

answered=

while [[ ! $answered ]]; do
   echo "Are you sure (Y/N)";
   read -r -n 1 -r answer
   if [[ $answer = [Yy] ]]; then
     answered="yes"
   elif [[ $answer = [Nn] ]]; then
     answered="no"
   fi
done

printf "\n%s\n" $answered

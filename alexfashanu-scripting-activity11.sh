#!/bin/bash

file=~/Desktop/wiley_act.txt
cat $file
echo "
That is a lot of numbers lets now reverse them and remove duplicates."
awk '{print}' $file | sort -rn | uniq 


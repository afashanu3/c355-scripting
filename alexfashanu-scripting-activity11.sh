#!/bin/bash

#Create a file that includes the following numbers.
#5 6 3 7 4 4 9 6 7 9 8 2 3 6 4 5 1 1 3 10 12
#Write a script that uses this file to perform the following tasks:
#Read in the file
#Sort the numbers into reverse order and output them to the screen
#Each number should output exactly once. Duplicate numbers should not appear in the output.

file=~/Desktop/wiley_act.txt
cat $file
echo "
That is a lot of numbers lets now reverse them and remove duplicates."
awk '{print}' $file | sort -rn | uniq 


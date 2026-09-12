#!/bin/bash

for i in 1 2 3 4 5; do
    echo "Number: $i"
done

echo "--------------------------------"

# read -p "Enter a number: " number
#  for ((i = 1; i <= number; i++)); do
#     echo "Number: $i"
#  done

# echo "--------------------------------"

# for i in {1..10..2}; do
#     echo "Number: $i"
# done

for character in "a" "b" "c"; do
    echo "Character: $character"
done

# now we will print the all file in the current directory

for file in *; do
    echo "File: $file"
done

echo "--------------------------------"

# now we will print the txt file in the current directory 

for txt_file in *.txt; do
    echo "Txt file: $txt_file"
done

echo "--------------------------------"

# now we will print the arguments passed to the script

for argument in "$@"; do
    echo "Argument: $argument"
done

echo "--------------------------------"
echo "0th argument name: $0"
echo "--------------------------------"

# # now while loop

# i=1
# while [ $i -le 5 ]; do
#     echo "Number: $i"
#     i=$((i+1))
# done

# echo "--------------------------------"


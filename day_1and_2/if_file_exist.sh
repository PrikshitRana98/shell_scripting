#!/bin/bash


echo "___________________________________________ $0"

echo "First argument:  $1"
echo "Second argument: $2"
echo "Third argument:  $3"

if [ $# -eq 0 ]
then
    echo "No arguments provided"
    exit 1
elif [ -f "$1" ]
then
    echo "File exists $0 and out----> $1"
else
    echo "File does not exist"
fi



#!/bin/bash

echo "$1 this is the main argument which is passed in the  command"

function hello() {
    echo "Hello, World! RamRama ji"
}

hello

print_existuser_script() {
    echo " local variable is $1"

    echo "List of users:"
    echo "--------------"

    # cut -d: -f1 /etc/passwd
    dscl . list /Users

    echo "List of users with UniqueID >= 501:"
    echo "-------------------------------------"

    dscl . list /Users UniqueID | awk '$2 >= 501 {print $1}'

    echo "-------------------------------------"

    dscl . list /Users UniqueID
}

print_existuser_script dsfsdf


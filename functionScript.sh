#!/bin/bash

echo "$1 this is the main argument which is passed in the  command"

function hello() {
    echo "Hello, World! RamRama ji"
}

hello

install_script() {
    echo " local variable is $1"
}

install_script dsf


#!/bin/bash

# Check argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <script-file>"
    exit 1
fi

# Check whether file exists
if [ ! -f "$1" ]; then
    echo "File does not exist: $1"
    exit 1
fi

# Check whether file is executable
if [ ! -x "$1" ]; then
    echo "File is not executable: $1"
    echo "Making it executable..."
    chmod +x "$1"
fi

# Run the script
echo "Running: $1"
./"$1"
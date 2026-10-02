#!/bin/bash

check_user_script() {
    # Check if the user exists
if id "$1" &>/dev/null; then
    echo "User $1 exists"
else
    echo "User $1 does not exist"
fi
}


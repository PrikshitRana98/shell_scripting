#!/bin/bash

# now we will install the package using the apt-get


# sudo apt-get install -y package_nam
read -p "Enter the package name: " package_name

# check if the package is already installed
if [ $(dpkg-query -W -f='${Status}' $package_name 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    echo "Package is not installed"
    echo "--------------------------------"
else
    echo "Package is already installed"
    echo "--------------------------------"
fi

sudo apt-get update
sudo apt-get install -y $package_name
echo "Package installed successfully"

# now we will uninstall the package using the apt-get

read "Are you sure you want to remove the package? (y/n) " confirm
if [ "$confirm" == "y" ]; then
    sudo apt-get remove -y $package_name
    echo "Package removed successfully"
    echo "--------------------------------"
else
    echo "Package not removed"
    echo "--------------------------------"
fi

#! /bin/bash
 
#  command
hostname=$(hostname)

echo "The hostname is $hostname"


current_date=$(date)
current_user=$(whoami)
current_directory=$(pwd)


echo "User: $current_user"
echo "$hostname"
echo "Date: $current_date"
echo "Directory: $current_directory"

echo "today is $(date)"
backup_date=$(date +%Y-%m-%d)
echo "Backup date: $backup_date"

echo "___________________________________________"








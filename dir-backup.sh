#!/bin/bash
#
##########################
# Author: Abdulhamid
# Date: 2/9/25
# Version: v1
# About: A script that take 2 arguments: username and backup directory
# #########################

# Number of arguments needed
 expected_args=2

# Assign args to variables pass in
 USERNAME=$1
 DIR_PATH=$2

# Check if the number of arguments is corrects
 if [ $# -ne $expected_args ]; then
	 echo " ❌ The expected number args must be $expected_args. Try again...."
	 echo " Usage: $USERNAME <args1> <arg2>"
	 exit 1
elif [ $# -eq $expected_args ]; then
	 echo "✅The number of Arguments pass is correct"
	
	 # Checking if the Username is not a number
	 if [[ "$1" =~ ^[0-9]+$ ]]; then
		 echo " ❌ The USERNAME cannot be a number"
		 echo " USAGE: $0 <Ejdeik> <./bin/home/ubuntu>"
		 exit 1
	else 
		# Username is correct and proceding to execute
		 echo "Authenticating Username......."
		 echo "✅Username is correct......."
		 echo "Backing up file to $DIR_PATH......."
		 exit 0
	 fi
 fi



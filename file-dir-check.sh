#!/bin/bash

######################################
# Author: Adekunle
# Date: 3rd sep, 25
# version: v1
#
# About: will be use to check file & directory
########################################

# number of args assign
exp_args=2

# Check if the args is pass in
if [ $# -ne $exp_args ]; then
	echo "Number of Args required is $exp_args args"
	echo "Usage: <args: directory path> <args: filename with path>"
	exit 1
fi

if [ -d "$1" ]; then
	echo "✅ Directory exist: $1"
	if [ -f "$2" ]; then
		echo "✅ File exist in $2"
		exit 0
	else 
		echo "❌ File does not exist, check the file name or add the file path"
		echo "Try again....."
	        exit 1
	fi
else 
 	echo "❌ Directory does not exist. Check the dir path"
	echo "Try again...."
	exit 1
fi


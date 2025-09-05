#!/bin/bash

##################################
# Author: Abdulhamid
# Date: 5th Sep, 25
#
# version: v1.0
# About: This Script check if a file exist and print out a message
######################################
 
# Number of Arguments needed
 expect_arg=1

# This line check for the file
 if [ $# -ne $expect_arg ]; then
	 echo " ❌ The number of arg is incorrect. try again...."
	 echo "USAGE: $0 <arg>"
	 exit 1
else 
  	echo "The Args correct. moving to check file existence"

	# This line check if the file exist in the directory
	if [ -f "$1" ]; then
		echo "✅😊 The File exist"
		exit 0
	else 
		echo "The file does not exist. Try again...."
		exit 1
	fi
 fi


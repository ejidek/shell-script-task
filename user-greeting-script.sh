#!/bin/bash

#########################
# Author: Abdulhamid
# Date: 2nd Sep, 25
# Version: v1
# 
# About: This Script expects exactly one argument
# #######################

# Number of Args expected
 expected_arg=1

# expected value variable
 VALUE=$1

# Check if the arg is present
if [ $# -ne $expected_arg ]; then
	 echo "❌ Argument must be $expected_arg argument"
               echo "USAGE: $0 <arg> "
 else
	if [[ "$VALUE" =~ ^[0-9]+$ ]]; then
		echo "❌ Username cannot be Number"
		echo "USAGE: $0 <Username: sting>"
                exit 1
	else
 		echo "Welcome $VALUE to Bash Scripting 🎉🎉🎉💯🏅👍"
		exit 0
	fi
fi


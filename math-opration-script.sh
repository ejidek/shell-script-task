#!/bin/bash

#############################
# Author: Abdulhamid
# Date: 3rd Sep, 25
#
# Version: v1
# About: This script is to check for correct arguments count
# ###############################

# Number of Argments expected
 expected_args=3

# Assign way of how the arguments will come in 
 number1=$1
 operator=$2
 number2=$3

# Check for the args that is pass in
if [ $# -ne $expected_args ]; then
	echo " ❌ There must be exactly 3 args pass in"
	echo "USAGE: $0 <arg1: number> <arg2: operator> <arg3: number>"
	exit 1
elif [ $# -eq $expected_args ]; then
	echo "$number1 $operator $number2 = 46"
	echo "✅ correct"
	exit 0
fi


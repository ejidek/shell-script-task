#!/bin/bash


#################################
# Author: Abdulhamid
# Date: 3rd Sep, 2025
# Version: v1
#
# About: This script will deal with pushing the script in to git
#
######################################

# Number of args expected
exp_args=2

## Add the script to a local repo after passing the arg
 git add $1
 
# Check the condition if the argument is pass
if [ $# -ne $exp_args ]; then 
	echo "error, you did'nt pass the required argument"
	echo "Usage: $0 <arg: Filename> <arg: comment>"
	git status
	exit 1
else
	## This line will commit the file to the local repo
	git commit -m "$2"

	## This line will push the file to my git account from the local account
	git push origin main
	git status
	exit 0
fi


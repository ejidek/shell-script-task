#!/bin/bash


#################################
# Author: Abdulhamid
# Date: 3rd Sep, 2025
# Version: v1
#
# About: This script will deal with pushing the script in to git
#
######################################


## Add the script to a local repo after passing the arg
 git add $1

## This line will commit the file to the local repo
 git commit -m "......"
 
## This line will push the file to my git account from the local account
 git push origin main
 git status

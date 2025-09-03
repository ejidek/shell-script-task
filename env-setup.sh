#!/bin/bash

########################################
# Author: Abdulhamid
# Date: 3rd sep, 25
# version: v1
#
# About: This an enviroments script that take in 2 args

# No args
 exp_args=2

# args expected
 project=$1
 enviroment=$2

# These line check if the no of args pass is correct
 if [ $# -eq $exp_args ]; then
	 echo "Setting up <$project> in <$enviroment> mode."
	 exit 0
 fi

 echo  "❌ Input just 2 args only"
 echo  "USAGE: <arg: project> <arg: enviroment>"
 exit 1

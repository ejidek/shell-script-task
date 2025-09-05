#!/bin/bash

####################################
# Author: Abdulhamid
# Date: 4th Sep, 25
# version: v1.0
#
# About: Log Roatation and Archiving
#################################################


# Define Path
 LOG_DIR="/var/log/myApp"
 ARCHIVE_DIR="/var/log/archive"
 DATE=$(date +%F)

# Create archive dir if it doesn't exist
 sudo mkdir -p "$ARCHIVE_DIR"
 sudo mkdir -p "$LOG_DIR"

 # Create files in to dir if it doesn't exist
 cd "$LOG_DIR"
 sudo touch 1.txt
 sudo touch 2.txt
 sudo touch 3.txt

# Find and compress logs older than 7 days
 find "$LOG_DIR" -type -f -exec echo {} +


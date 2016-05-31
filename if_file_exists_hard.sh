#!/bin/bash
#
# 1 - This script shows the script name.
# 2 - It needs a parameter given trough the command line
# 3 - The script verifies if the parameter is an existing file.
#
echo "Script name: $0 "  #bash variable 
# Verify the existence of a parameter
#
if [ $# -ne 1 ]
then
	echo "Syntax : $0 file name"
	exit 1  # No  parameter
fi
if [ -e "$1" ]
then
	file "$1"
else
	echo " File $1 doesn't exist"
	exit 2 # File does not exist
fi

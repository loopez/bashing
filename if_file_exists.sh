#!/bin/bash
#
# 1 - This script shows the name of the script.
# 2 - It needs a parameter .
# 3 - It verifies if the parameter is an existing file and then uses the file command on the file.
#
echo "Script name $0 "  # Shell variable that contains the script name
# Verifies if there's a parameter
#
if [ $# -ne 1 ]
then
        echo "Syntax : $0 filename"
        exit 1 # No parameter given
fi

#Testing file existence 

if [ -e "$1" ]
then
        file "$1"
else
        echo "File $1 doesn't exist"
        exit 2 # File doesn't exist
fi

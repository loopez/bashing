#!/bin/bash
#
#This script reads a value and verifies if it is numeric

read -p "Number= " number
if [[ "$number" =~ ^[0-9]+$ ]]
then
	if [ $number -gt 100 ]
	then 
		echo "$number > 100"
	else
		echo "$number <= 100"
	fi
else 
	echo "$number is no numeric!"
fi

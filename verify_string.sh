#!/bin/bash
#
# Verifies if a string in standard input is different from "user"

read -p "User name : " my_user
if [ "$my_user" != "user" ]
then 
	echo "Username $user unrecognized"
else
	echo "Login as $user"
fi


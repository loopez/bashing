#!/bin/bash
#
#Verify the status of a service given as a parameter and start it.
#
if service "$1" status >/dev/null 2>&1
then
        echo "Service "$1" déja démarré." 
else
        service $1 start
fi

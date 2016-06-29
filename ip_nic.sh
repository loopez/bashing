#!/bin/bash
#
# This script will display the NIC names and the IP adresses 
#
nic_list=$(netstat -i | tail -n +3 | cut -d" " -f1)
for nic in $nic_list
do
	echo $nic
	ifconfig $nic | egrep "inet (adr|addr)"
done

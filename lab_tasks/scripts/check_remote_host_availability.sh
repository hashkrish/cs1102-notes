#!/bin/bash
#
# Check if a remote host is available or not
# Contributed by: Bathula Sharath Kumar
#
read -rp "Enter remote host IP address:" ip
if ping -c 1 "$ip"; then
	echo "-----------------------"
	echo "Host is up!"
	echo "-----------------------"
else
	echo "-----------------------"
	echo "Host is down!"
	echo "-----------------------"
fi

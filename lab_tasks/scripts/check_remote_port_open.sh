#!/bin/bash
#
# Check if a remote port is open or not
# Contributed by: TA Bathula Sharath Kumar
#
read -rp "Enter host address:" HOST
read -rp "Enter port number:" PORT
if nc -z -v -w5 "$HOST" "$PORT"; then
	echo "----------------------------------------------"
	echo "Port $PORT on $HOST is open"
	echo "----------------------------------------------"
else
	echo "----------------------------------------------"
	echo "Port $PORT on $HOST is closed"
	echo "----------------------------------------------"
fi

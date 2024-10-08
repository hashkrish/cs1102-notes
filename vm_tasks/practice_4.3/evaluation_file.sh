#!/bin/bash

n=$(bash script.sh)

if [ "$n" != "2" ]; then
	exit 1
fi

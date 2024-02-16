#!/bin/bash

i=1
name=("Lalita" "Abhilasha")
for nam in "${name[@]}"; do
	oa=$(bash script.sh $nam)
	oe="hello $nam"
	if [ "${oa}" != "${oe}" ]; then
		echo "Test case ${i} failed"
		exit 1
	fi
	((i++))
done

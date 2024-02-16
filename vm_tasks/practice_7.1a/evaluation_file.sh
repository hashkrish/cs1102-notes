#!/bin/bash

i=1
name=("Ravi" "Amit")
for nam in "${name[@]}"; do
	oa="$(
		bash script.sh <<A
$nam
A
	)"
	oe="hello $nam"
	if [ "${oa}" != "${oe}" ]; then
		echo "Test case ${i} failed"
		exit 1
	fi
	((i++))
done

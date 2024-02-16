#!/bin/bash

i=1
arr1=(235 1 143)
arr2=(1 5 12344)
for n in {0..2}; do
	oa="$(
		bash script.sh <<A
${arr1[n]}
${arr2[n]}
A
	)"
	oe=$((${arr1[n]} + ${arr2[n]}))
	if [ "${oa}" -ne "${oe}" ]; then
		echo "Test case ${i} failed"
		exit 1
	fi
	((i++))
done

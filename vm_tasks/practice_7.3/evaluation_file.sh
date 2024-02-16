#!/bin/bash

i=1
arr1=("ss" 34 22 "a" 1)
arr2=(2 56 1 "second" "secondPlease")
ans=("ss2" 90 23 "asecond" "1secondPlease")

for n in {0..3}; do
	oa="$(bash script.sh ${arr1[n]} ${arr2[n]})"
	oe="${ans[n]}"

	if [ "${oa}" != "${oe}" ]; then
		echo "Test case ${i} failed"
		exit 1
	fi
	((i++))
done

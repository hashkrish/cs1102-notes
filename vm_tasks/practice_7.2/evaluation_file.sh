#!/bin/bash

i=1
arr1=(1 123 1 "a")
arr2=(1 124 "afewf" "b")
ans=(2 247 "NOT INTEGERS" "NOT INTEGERS")

for n in {0..3}; do
	arg1="${arr1[n]}"
	arg2="${arr2[n]}"
	oa="$(bash script.sh $arg1 $arg2 2>stderr)"
	oe="${ans[n]}"

	if [ $n -ge 2 ]; then
		oa=$(cat stderr)
		rm stderr
	fi

	if [ "${oa}" != "${oe}" ]; then
		echo "Test case ${i} failed"
		exit 1
	fi
	((i++))
done

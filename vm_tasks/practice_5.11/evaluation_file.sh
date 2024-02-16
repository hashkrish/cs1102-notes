#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

test_txt=("Hello World")

i=1
for dir in $(ls $test_dir/ | grep "test_case" | sort); do
	read cmd <$test_dir/$dir/input
	echo ${test_txt[i - 1]} >output
	oa=$(cmd="$cmd" bash script.sh)
	read oe <output
	if [ "${oa}" != "${oe}" ]; then
		echo "Test case ${i} failed"
		exit 1
	fi
	((i++))
done

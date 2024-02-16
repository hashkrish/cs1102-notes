#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

i=1
for dir in $(ls $test_dir/ | grep "test_case" | sort); do
	read filename <"${test_dir}/${dir}"/input
	oa=$(filename="$filename" bash script.sh)
	read oe <"${test_dir}/${dir}"/output
	if [ "${oa}" != "${oe}" ]; then
		echo "Test case ${i} failed"
		exit 1
	fi
	((i++))
done

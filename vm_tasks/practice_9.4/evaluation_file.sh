#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

out=(2 8 3)

i=0

for dir in $(ls "$test_dir" | grep "test_case" | sort); do
	cat $test_dir/$dir/input >file

	oa=$(awk -f script.awk file)
	oe=${out[i]}

	if [ "$oa" -ne "$oe" ]; then
		echo "Test case $((i + 1)) failed"
		exit 1
	fi

	((i++))
done

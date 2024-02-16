#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

i=0

for dir in $(ls "$test_dir" | grep "test_case" | sort); do
	while read -r line; do
		[[ $line == "" ]] && break
		echo $line
	done <$test_dir/$dir/input >file

	awk -f script.awk file >out.txt

	diff out.txt $test_dir/$dir/output &>/dev/null

	if [ $? -eq 1 ]; then
		echo "Test case $((i + 1)) failed"
		exit 1
	fi

	((i++))
done

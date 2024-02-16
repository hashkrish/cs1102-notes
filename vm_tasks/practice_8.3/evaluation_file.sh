#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

out=(57 17728 725)

i=0
for dir in $(ls "$test_dir" | grep "test_case" | sort); do
	>lsoutput
	while read line; do
		echo $line >>lsoutput
	done <$test_dir/$dir/input

	bash script.sh
	total=0
	for l in $(cut -d " " -f 5 lsoutput); do
		total=$((total + l))
	done

	if [ "$total" -ne "${out[i]}" ]; then
		echo "Test case $((i + 1)) failed"
		exit 1
	fi

	((i++))
done

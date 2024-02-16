#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

fname=("alphabet" "linefile" "twister")

i=0

for dir in $(ls "$test_dir" | grep "test_case" | sort); do
	filename="${fname[i]}"
	>$filename
	while true; do
		read line
		if [[ $line == "" ]]; then break; fi
		echo $line >>$filename
	done <$test_dir/$dir/input

	filename="$filename" bash script.sh >out.txt

	diff out.txt $test_dir/$dir/output &>/dev/null

	if [ "$?" -eq 1 ]; then
		echo "Test case $((i + 1)) failed"
		exit 1
	fi

	((i++))
done

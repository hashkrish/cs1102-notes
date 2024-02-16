#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

i=0

for dir in $(ls "$test_dir" | grep "test_case" | sort); do
	rm *.c 2>/dev/null
	eof="EOF"
	while read file; do
		if [[ $file =~ $eof ]]; then
			break
		fi
		rm $file 2>/dev/null
		while read line; do
			if [[ $line =~ $eof ]]; then
				break
			fi
			echo $line >>$file
		done
	done <$test_dir/$dir/input

	bash script.sh >out.txt

	diff out.txt $test_dir/${dir}/output &>/dev/null

	if [ "$?" -eq 1 ]; then
		echo "Test case $((i + 1)) failed"
		exit 1
	fi

	((i++))
done

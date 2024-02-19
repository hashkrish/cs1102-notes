#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

i=1
for dir in $(ls $test_dir/ | grep "test_case" | sort); do

	cp ${test_dir}/${dir}/input dfOutput.txt

	bash script.sh >out.txt

	diff out.txt ${test_dir}/${dir}/output &>/dev/null

	if [ "$?" -eq 1 ]; then
		echo "Test case $i failed"
		exit 1
	fi
	((i++))
done

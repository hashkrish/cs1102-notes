#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"
inp=(8 5 3)
i=0
for dir in $(ls $test_dir/ | grep "test_case" | sort); do
	bash script.sh ${inp[i]} >out.txt #| tee out.txt

	diff out.txt ${test_dir}/${dir}/output &>/dev/null

	if [ "$?" -eq 1 ]; then
		echo "Test case $((i + 1)) failed"
		exit 1
	fi

	((i++))
done

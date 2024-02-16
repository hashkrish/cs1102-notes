#!/bin/bash

tmp_file="/tmp/temp_$(whoami)"

test_dir="/opt/cs1102/$(basename $(pwd))"

i=1
for dir in "${test_dir}/test_case_"{1..3};
do
        read logfile < $dir/input
        export logfile
        bash script.sh > $tmp_file
	diff ${dir}/output $tmp_file 2> /dev/null
	if [ "$?" -ne 0 ]; then
                echo "Test case ${i} failed"
                exit 1
        fi
        (( i++ ))
done

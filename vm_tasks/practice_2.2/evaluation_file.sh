#!/bin/bash

parent_dir="$(pwd)"
test_dir="/opt/cs1102/$(basename $parent_dir)"
i=1
for dir in "${test_dir}/test_case_"{1..3};
do
	cat ${dir}/input > ${parent_dir}/somefile
	
	oa=$(./script.sh)
	oe=$( cat ${dir}/output )
	if [ "${oa}" != "${oe}" ];
	then
		echo "Test case ${i} failed"
		exit 1
	fi
	(( i++ ))
done
	

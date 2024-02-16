#!/bin/bash

test_dir="/opt/cs1102/$(basename $(pwd))"

for dir in $(ls $test_dir/ | grep "test_case" | sort); do
	read cmd <$test_dir/$dir/input
	cmd="$cmd" bash script.sh
	cmd="$cmd" bash $test_dir/$dir/getop
	diff ans.txt man_$cmd.txt &>/dev/null || exit 1
	diff ans.err man_$cmd.err &>/dev/null || exit 1
done

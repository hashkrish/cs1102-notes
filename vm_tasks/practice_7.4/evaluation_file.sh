#!/bin/bash

i=1

arr1=(1 1 0)
arr2=("walk.sh" "layout.xml" "writer.o")
arr3=(777 333 711)
out=("WOO HOO" "NOT READABLE" "DOES NOT EXIST")
exs=(0 2 1)

for n in {0..2}; do
	if [[ "${arr1[n]}" == 1 ]]; then
		touch "${arr2[n]}"
		chmod "${arr3[n]}" "${arr2[n]}"
	fi

	oa="$(bash script.sh ${arr2[n]} 2>output)"
	es=$?
	if [ -s output ]; then
		read oa <output
	fi
	oe="${out[n]}"
	if [ "${oa}" != "${oe}" ] || [ "$es" != "${exs[n]}" ]; then
		echo "Test case ${i} failed"
		exit 1
	fi
	((i++))
	rm output
done

#!/bin/bash

i_=1
inp=(37907 45456 123)
out=(70973 65454 321)

for n_ in {0..2}; do
	oa="$(bash script.sh ${inp[n_]})"
	oe="${out[n_]}"

	if [ "${oa}" != "${oe}" ]; then
		echo "Test case ${i_} failed"
		exit 1
	fi
	((i_++))
done

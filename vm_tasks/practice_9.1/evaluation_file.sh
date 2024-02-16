#!/bin/bash

i=1
inp=(3 10 5 2)
out=(2 55 5 1)

for n in {0..3};
do
        oa="$(awk -f file.awk ${inp[n]})"
        oe="${out[n]}"

        if [ "${oa}" != "${oe}" ];
        then
                echo "Test case ${i} failed"
                exit 1
        fi
       (( i++ ))
done

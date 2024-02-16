#!/bin/bash

i=1
inp=(113 27 4 1)
out=("Prime" "Not Prime" "Not Prime" "Not Prime")

for n in {0..3};
do
        oa="$(bash script.sh ${inp[n]})"
        oe="${out[n]}"

        if [ "${oa}" != "${oe}" ];
        then
                echo "Test case ${i} failed"
                exit 1
        fi
       (( i++ ))
done

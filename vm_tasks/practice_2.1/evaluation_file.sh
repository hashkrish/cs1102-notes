#!/bin/bash

dir="$(pwd)"

[ `ls -l "$dir/final.txt" | cut -d " " -f 1` == "-r-xr--r--" ] && exit 0 || exit 1

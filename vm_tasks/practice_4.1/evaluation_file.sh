#!/bin/bash

rm out.txt 2>/dev/null

bash script.sh

dir="/opt/cs1102/$(basename $(pwd))"
diff $dir/output out.txt &>/dev/null

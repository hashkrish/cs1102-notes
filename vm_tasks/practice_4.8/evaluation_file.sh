#!/bin/bash

rm continent.txt 2>/dev/null

bash script.sh

dir="/opt/cs1102/$(basename $(pwd))"
diff $dir/output continent.txt &>/dev/null

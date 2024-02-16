#!/bin/bash

ans_file="/opt/cs1102/$(basename $(pwd))/ans.txt"

diff "${ans_file}" file2.txt &>/dev/null

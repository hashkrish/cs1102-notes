ans_file="/opt/cs1102/$(basename $(pwd))/ans.txt"
touch file1.txt
bash script.sh
diff "${ans_file}" output.txt &>/dev/null

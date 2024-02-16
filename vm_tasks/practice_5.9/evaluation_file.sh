test_dir="/opt/cs1102/$(basename $(pwd))"

eid1="FN04M456" eid2="SD12C729" eid3="WO08W003" bash script.sh

diff $test_dir/ans.txt output.txt &>/dev/null

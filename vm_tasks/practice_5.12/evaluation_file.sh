oa=$(ct=0 words=1000 bash script.sh)

if [ "$oa" == "1000" ]; then exit 0; else exit 1; fi

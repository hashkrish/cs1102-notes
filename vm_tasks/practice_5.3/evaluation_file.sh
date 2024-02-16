#!/bin/bash

parent_dir="$(pwd)"

for dir in  $(echo "1A 1B 1C 1D 1E 2A 2B 2C 2D 2E 3A 3B 3C 3D 3E 4A 4B 4C 4D 4E 5A 5B 5C 5D 5E 6A 6B 6C 6D 6E 7A 7B 7C 7D 7E 8A 8B 8C 8D 8E 9A 9B 9C 9D 9E 10A 10B 10C 10D 10E 11A 11B 11C 11D 11E 12A 12B 12C 12D 12E"); do
  p='^[16][A-E]$'
  if [[ $dir =~ $p  ]]; then
    diff <(seq 32 | sort -n ) <(ls -1 $parent_dir/$dir | sort -n)
    if [ $? != 0  ]; then
      echo "Check the files in the directory $dir"
      echo "Failed"
      exit 1
    fi
  else
    diff <(seq 40 | sort -n ) <(ls -1 $parent_dir/$dir | sort -n)
    if [ $? != 0  ]; then
      echo "Check the files in the directory $dir"
      echo "Failed"
      exit 1
    fi
  fi
done

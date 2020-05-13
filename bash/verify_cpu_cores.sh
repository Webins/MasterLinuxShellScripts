#!/bin/bash

#in some machines the word name is used<instead of processor
count=$(grep -c processor /proc/cpuinfo)
if (( count < 4 )); then
echo "The cpu has less than 4 cores"
else
echo "the cpu has 4 or more cores"
fi


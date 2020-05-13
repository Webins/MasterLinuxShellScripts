#!/bin/bash

function is_file {
if [ ! -f "$1" ] ; then
echo "$1 is not a file"
exit 1
fi
}

function clean_file {
is_file "$1"
BEFORE=$(wc -l "$1")
echo "The file $1 starts with $BEFORE"
sed -i.backup '/^\s*#/d;/^$/d' "$1"
AFTER=$(wc -l "$1")
echo "The file now is $AFTER"
} 

read -p "Enter the file name: "
clean_file "$REPLY"
exit 0

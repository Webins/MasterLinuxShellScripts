#!/bin/bash
echo -n "you are using the script named"
echo " $(basename $0)"
echo "enter your name: "
read
#read -p "enter your name: " name
echo "Hello $REPLY"
exit 0

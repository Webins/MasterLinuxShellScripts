#!/bin/bash

while true
do
clear

echo "choose an option"
echo "(a) display calendar"
echo "(b) show disk usage"
echo "(c) exit"
read -sn1 -p ":"

clear
case "$REPLY" in
a) cal;;
b) df -h;;
c) exit 0;;
esac
echo
read -n1 -p "Press any key to continue"
done

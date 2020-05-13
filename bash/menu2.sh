#!/bin/bash

function to_lower(){
input="$1"
out=$(tr [:upper] [:lower] <<< "$input")
echo $out
}

function display_cal(){
if [ -x /usr/bin/ncal ] ; then
	command="/usr/bin/ncal -w"
else
	command="/usr/bin/cal"
fi

$command
}


while true
do
clear

echo "choose an option"
echo "(a) display calendar"
echo "(b) show disk usage"
echo "(c) exit"
read -sn1 -p ":"
REPLY=$(to_lower "$REPLY")
clear
case "$REPLY" in
a) display_cal;;
b) df -h;;
c) exit 0;;
esac
read -n1 -p "Press any key to continue"
done

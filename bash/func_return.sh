#!/bin/bash

function to_lower(){
input="$1"
out=$(tr [A-Z] [a-z] <<< "$input")
echo $out #in this case,echo is equal to return
}

while true
do

read -p "Select q to continue, c to exit: "
REPLY=$(to_lower "$REPLY")
if [ "$REPLY" = "c" ] ; then
echo "finished"
exit 0
fi

done



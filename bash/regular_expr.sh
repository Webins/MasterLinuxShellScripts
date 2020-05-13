#!/bin/bash

#we can use regular expr inside the reserved
#keyword [[, doesnt work for bourne shell

shopt -s nocasematch #turn off case sensitive
read -p "type color or mono for the script ouput color:"

if [[ "$REPLY" =~ colou?r ]] ;then

source ./color.sh

fi

echo -e "${GREEN} This is $0 ${RESET} "

shopt -u nocasematch #reset case sensitive

exit 0


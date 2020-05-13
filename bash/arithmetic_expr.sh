#!/bin/bash

#the (()) is use to simplify mathematical 
#operationa within scripts

read -p "Enter a number: "
input=$REPLY
(( REPLY > 0)) && (( REPLY -- )) && echo ""$input" Was substracted by 1" 


(( REPLY <= 0 )) &&(( REPLY ++ )) && echo ""$input" Was added 1"

echo "The result is : $REPLY"

exit 0

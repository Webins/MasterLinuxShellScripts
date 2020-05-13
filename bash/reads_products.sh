#!/bin/bash

OLDIFS="$IFS"
IFS=","
while read product price quantity 
do
echo -e "\033[1;33m$product \
\t==========================\033[0m\n\
\tprice: \t\t $price \n\
\tquantity: \t $quantity \n"

done < "$1"
IFS=$OLDIFS

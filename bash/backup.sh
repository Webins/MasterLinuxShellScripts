#!/bin/bash
#this script will move all the file type
#specified to a directory called by the user
#in the same location

read -p "enter the file type extension: " suff
read -p "enter directory name: " dir_name

test -d $pwd/$dir_name || mkdir $pwd/$dir_name

find $pwd -path $pwd -prune -o \
 -name "*$suff" ! -name "$(basename $0)" \
 -exec cp {} $pwd/$dir_name/ \;
exit 0

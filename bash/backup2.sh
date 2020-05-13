#!/bin/bash
#this script will move all the file type
#specified to a directory called by the user
#in the same location

echo "choose the level of compression"
read -p "H =high,M=mid, L=low: " comp_lvl
read -p "enter directory name: " dir_name

backup_dir="$HOME/$dir_name"

test -d $backup_dir || mkdir -m 700 $backup_dir

if [ $comp_lvl="h" ] || [ $comp_lvl="H" ] ; then
tar_opt="-cjvf $backup_dir/b.tar.bzip2 --exclude $backup_dir $HOME"

elif [ $comp_lvl="m" ] || [ $comp_lvl="M" ] ; then
tar_opt="-cvzf $backup_dir/b.tar.gz --exclude $backup_dir $HOME"

elif [ $comp_lvl="l" ] || [ $comp_lvl="L" ] ; then
tar_opt="-cvf $backup_dir/b.tar --exclude $backup_dir $HOME"

else
echo "the level supplied wasn't correct"
fi

tar $tar_opt

exit 0

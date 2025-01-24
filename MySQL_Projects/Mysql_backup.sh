#!/bin/bash

source=/mnt/c/Users/User/downloads/project/source
dest=/mnt/c/Users/User/downloads/project/destination

for file in $(find $source -printf "%P\n");do
	if [ -a $dest/$file];then
		if [ $source/$file -nt $dest/$file];then
		echo "Newest file detected, copying.."
		cp -r $source/$file $dest/$file
		else
		echo "$file exists, skipping.."
		fi
	else
		echo "$file is being copied to $dest"
		cp -r $source/$file $dest/$file
	fi
done

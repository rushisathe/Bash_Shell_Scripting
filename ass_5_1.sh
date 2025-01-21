#!/bin/bash

for file in *
do 
	if [ -s $file ] && [ -f $file ]
	then
		if [ ! -f "$file.bck" ]
		then
			cp $file "$file.bck"
			echo back is done for file $file
		else
			echo backup file exists for $file
		fi
	else
		echo size is zero 
	fi
done 

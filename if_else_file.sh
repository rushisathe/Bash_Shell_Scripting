#!/bin/bash

read -p "Enter the file name" filename

if [ -e $filename ]
then
	echo "file exists"
	status=""
	if [ -r $filename ]
	then 
		status="readeable"
	fi
	if [ -w $filename ]
	then 
		status="$status Writable"
	fi

	if [ -x $filename ]
	then 
		status="$status executable"
	fi
	echo "file permission: $status"
else
	echo "file not exists"
fi



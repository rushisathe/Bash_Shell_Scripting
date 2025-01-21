#!/bin/bash

read -p "enter your string 1 " str1
read -p "enter your string 2 " str2 

if [ -z $str1 ]
then
	echo "the first string is null"
elif [ -z $str2 ]
then 
	echo "the second sttring is null"
else
	if [ $str1 == $str2 ]
	then 
		echo "the strings are equal"
	else
		echo " the strings are not equal"
	fi
fi

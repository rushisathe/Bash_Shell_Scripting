#!/bin/bash

OP=$1

if [ "$1" == "-a" ];
then
	ID=$2 FIRST=$3 LAST=$4 AGE=$5
	echo "$ID,$FIRST,$LAST,$AGE" >> users.dat
	echo "user added"
elif [ "$1" == "-l" ];
then 
	cat users.dat
fi

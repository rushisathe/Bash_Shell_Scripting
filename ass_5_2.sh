#!/bin/bash

for ((i=1;i<=4;i++))
do
	x=0
	for ((j=1;j<=$i;j++))
	do
		let x=x+1
		echo -n "$x"
	done
	echo ""
done


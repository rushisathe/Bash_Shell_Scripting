#!/bin/bash

declare -a all

files=$(ls)

for i in $files
do
	all+=("$i")
done

echo ${all[@]}

declare -a file_txt
files2=$(ls *.txt)

for j in $files2
do
	file_txt+=("$j")
done 

echo ${file_txt[@]}


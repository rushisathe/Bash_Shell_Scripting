#!/bin/bash

file="input.txt"

while IFS= read -r line
do
	printf '%s\n' "$line"
done < "$file"


#!/bin/bash

#• Q2: Write a script to create file abc.txt and directory Test. Rename file to ABC.txt and then move it to Test directory.

touch abc.txt
echo file abc.txt created!

mkdir Test
echo Directory created

mv abc.txt ABC.txt

echo file renamed

mv ABC.txt Test/

echo file moved 

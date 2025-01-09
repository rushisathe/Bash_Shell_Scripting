#!/bin/bash

# Q1: Write a script to list files under user’s home directory that ends with .txt.

files=$(ls $HOME/*.txt)
echo $files


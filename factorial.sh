#!/bin/bash

# Read number from user
read -p "Enter a number: " num

# Initialize factorial to 1
fact=1

# Calculate factorial using a loop
for (( i=1; i<=num; i++ ))
do
  fact=$((fact * i))
done

# Display the result
echo "Factorial of $num is: $fact"


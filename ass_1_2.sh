#Q2: Write a script to accept as firstname, middlename and lastname from user. Display full name in the format - lastname

#!/bin/bash

read -p "Enter firstname: " firstname

read -p "Enter Middlename: " middlename

read -p "Enter Lastname: " lastname

echo "$lastname $firstname $middlename"

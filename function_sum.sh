#!/bin/bash
sum(){
	return $((a+b))
}
sub(){
	return $((a-b))
}

echo enetr a 
read a
echo enter b
read b

sum

ans=$?
echo your sum is $ans

sub 
ans2=$?
echo your sub is $ans2

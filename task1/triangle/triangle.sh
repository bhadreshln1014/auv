#!/bin/bash

# take input of n from the user

echo "Enter a number"
read n

# decrement n by 1 - the outer for loop runs from 0 to n-1, hence n times
# declare starts to be 0 - the triangle gets built from the top corner, being 0
# the inner for loop runs from 0 to i - in the ith line, i numbers get printed
# assign e to be starts everytime the loop runs and do operations on it, so that starts goes to n in the end unnaffected. 

n=$(($n-1))
starts=0

for i in $(seq 0 $n) 
do
	for j in $(seq 0 $i)
	do
		e=$starts
		echo -n  "$(($e%10))"
		starts=$(($starts+1))
	done
	echo " "
done


#!/bin/bash

# take input of the directory, text to be replaced, and the new text

echo "Enter the directory"
read directory

echo "Enter the text to be replaced"
read oldtext

echo "Enter the new text"
read newtext

# check if directory exists.
# if yes, for all filenames in the current directory that contains the oldtext as a subset, replace the oldtext with the newtext
# if not, exit

if cd "$directory"; 
then
	for filename in *; 
	do
		if [[ "$filename" == *"$oldtext"* ]];
		then
			new="${filename//$oldtext/$newtext}"
			mv "$filename" "$new"
			echo "Renamed '$filename' to '$new'"
		fi
	done
else
	echo "Directory not found"
	exit
fi


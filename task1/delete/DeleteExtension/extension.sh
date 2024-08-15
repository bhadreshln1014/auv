#!/bin/bash

echo "Files of which extension do you want to delete"
read extension

echo "which directory do you want to delete"
read directory

if cd "$directory";
then
	for filename in *"$extension";
	do
		if [[ "$filename" == *"$extension" ]];
		then
			rm "$filename"
			echo "$filename has been deleted successfully"
		fi
	done
else
	echo "directory not found"
	exit
fi


#!/bin/bash

# get input of path from user

echo "Enter the file path to be deleted"
read path

# if the path exists, delete the file path, and check if it has been deleted successfully. if it hasn't been deleted successfully, let the user know.
# if the path doesnt exist, let the user know, and exit

if [ -f "$path" ];
then
	rm "$path"

	if [ ! -f "$path" ];
	then
		echo "The file '$path' has been deleted"
	else
		echo "Failed to delete '$path'"
	fi
else
	echo "No file found at path '$path'"
fi


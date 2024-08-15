#!/bin/bash

# take input of directory, old extension and new extension

echo "Which extension do you want changed"
read extension

echo "To what do you want it to be changed"
read new

echo "In which directory"
read directory

# if the directory exists, for all files with the needed extension, extract the base, create the newname with the base and new extension and rename the oldname to the newname
# else, exit

if cd "$directory";
then
	for filename in *"$extension";
	do
		if [[ "$filename" == *"$extension" ]];
		then
			base="${filename%$extension}"
			newname="${base}$new"
			mv "$filename" "$newname"
			echo "Renamed '$filename' to '$newname'"
		fi
	done
else
	echo "Directory not found"
	exit
fi



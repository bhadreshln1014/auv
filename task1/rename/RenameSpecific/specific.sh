#!/bin/bash

# first, we are taking the file's path from the user

echo "Enter the full path of the file"
read path

# we check if the file exists in the given path or not. 
# the -f command checks if a regular file exists in the path.
# it expands the path into a string, and attempts to locate a file at the path.
# if a regular file exists, true is returned. 
# else if a regular file doesnt exist or the path doesnt exist, false is returned

if [ ! -f "$path" ]; 
then
	echo "file doesn't exist"
	exit
fi

# we collect the directory of the file, and its old name, using dirname and basename commands

directory=$(dirname $path)
oldname=$(basename $path)

# we print the old name of the file of reference, and ask the user for the newname of the file (including the extension)

echo "the current file name is: $oldname"

echo "enter the new name of the file (include extension)"
read newname

# we check if the old name and new names are equal. if yes, we exit

if [ "$oldname" = "$newname" ];
then
	echo "the new name is same as the old name"
	exit
fi

# this is where we rename the file. the path changes from directory/oldname to directory/newname, essentially

mv "$path" "$directory/$newname"

# if the exit status ($?) indicates success (0, usually), then the rename is successful

if [ $? -eq 0 ];
then
	echo "file has been renamed successfully from '$oldname' to '$newname'"
else
	echo "failed to rename the file"
fi




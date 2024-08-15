#!/bin/bash

echo "which extension files do u want to delete in all the folders"
read extension

echo "enter parent directory"
read parent

if [ ! -d "$parent" ];
then
	echo "directory doesn't exist"
	exit
fi

echo "deleting all files with the extension '$extension' in '$parent'"
find "$parent" -type f -name *"$extension" -delete

echo "deletion of all '$extension' files is complete"

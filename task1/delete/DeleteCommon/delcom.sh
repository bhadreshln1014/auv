#!/bin/bash

# take input of the directory, text to be replaced, and the new text

echo "Enter the directory"
read directory

echo "files with which text do u want to delete"
read text

# check if directory exists.
# if yes, for all filenames in the current directory that contains the text as a subset, delete.
# if not, exit

if cd "$directory";
then
        for filename in *;
        do
                if [[ "$filename" == *"$text"* ]];
 		then
			rm "$filename"
                        echo "Deleted '$filename'"
                fi
        done
else
        echo "Directory not found"
        exit
fi


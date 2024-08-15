#!/bin/bash

# check if cowsay and fortune are installed locally in the first place
# command -v <module> will check if the module is installed
# &> /dev/null will discard the output or errors that the command produces. this is because we only care about the exit status and not the command's output.

if ! command -v cowsay &> /dev/null;
then
	echo "install cowsay"
	exit
fi

if ! command -v fortune &> /dev/null;
then
	echo "install fortune"
	exit
fi

# check if the exit status is greater than 0. if yes, store them in a variable called message and pass it into cowsay
# if not, pass fortune in cowsay

if [ $# -gt 0 ];
then
	message="$*"
else
	message=$(fortune)
fi

cowsay "$message"



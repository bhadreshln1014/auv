#!/bin/bash

# the user should've provided the city name in the CLI. if they have, then the city will be stored in city variable
# the weather variable will store the temperature data of the given city from wttr.in website, using the curl command. -s is used to suppress the other outputs of curl. %t is a format specifier used to store ONLY the temperature in the variable.
# if the exit status after the weather variable assignment is 0 (successful), then print the info
# else, failure
# if the user hasn't entered the city name, prompt him to do so

if [ $# -eq 0 ];
then
	echo "provide a city name"
	exit
fi

city="$*"

weather=$(curl -s "wttr.in/$city?format=%t")

if [ $? -eq 0 ];
then
	echo "current temperature in '$city' is '$weather'"
else
	echo "failed to retreive weather info for '$city'"
fi


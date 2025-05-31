#!/bin/bash
#Write a script that takes a filename as an argument, checks if it exists, and prints the content of the file accordingly.

#check if file argument provided
if [ $# -eq 0 ]; then
	echo "Error: No filename provided"
	echo "usage: ./challenge-3.sh <filename>"
	exit 1
fi

FILENAME="$1"

#check if the file exists
if [ -f "$FILENAME" ]; then
	echo "File '$FILENAME' found. Displaying content:"
	cat "$FILENAME"
else
	echo "Error: file '$FILENAME' does not exist"
fi

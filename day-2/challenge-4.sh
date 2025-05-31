#!/bin/bash
#Create a script that lists all running processes and writes the output to a file named process_list.txt.

#define output file
OUTPUT_FILE="process_list.txt"

#list all running processes and write to file
ps aux > "$OUTPUT_FILE"

#print success message
echo "process list saved to $OUTPUT_FILE"

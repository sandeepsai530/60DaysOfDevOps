#!/bin/bash
#Create a script that monitors CPU and memory usage every 5 seconds and logs the results to a file.

#define the log file
LOG_FILE="resource_usage.log"

echo "Monitoring CPU and Memory usage ... logs will be saved in $LOG_FILE"
echo "Timestamp | CPU (%) | Memory (%)" > "$LOG_FILE"

#infinite loop to log system usage every 5 seconds

while true; do
	TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

	#get CPU usage
	CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

	#get memory usage
	MEM_USAGE=$(free | awk '/Mem/ {printf "%.2f", $3/$2 * 100}')

	#write data to the log file
	echo "$TIMESTAMP | $CPU_USAGE | $MEM_USAGE" >> "$LOG_FILE"

	#wait for 5 seconds
	sleep 5
done


#!/bin/bash
#Write a script that automatically deletes log files older than 7 days from /var/log.

#define log directory
LOG_DIR="/var/log"

#define file age threshold ( in days)
DAYS=7

#find and delete log files older than 7 days
find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

#print success message
echo "deleted log files older than $DAYS from $LOG_DIR"

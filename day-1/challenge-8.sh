#Write a one-liner command to find the most frequently used command in your shell history.

history | awk '{CMD[$2]++;} END {for (a in CMD) print CMD[a], a;}' | sort -nr | head -1

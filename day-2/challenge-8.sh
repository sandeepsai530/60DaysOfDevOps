#!/bin/bash
#Automate user account creation – Write a script that takes the username as an argument, checks, if the user exists, gives the message “user already exists“ else creates a new user, adds it to a “devops“ group, and sets up a default home directory.

#check if username provided
if [ $# -eq 0 ]; then
	echo "error: no username provided"
	echo "usage: sudo ./challenge-8.sh <username>"
	exit 1
fi

USERNAME="$1"
GROUP="devops"

#check if user name already exists
if id "$USERNAME" &>/dev/null; then
	echo "user: '$USERNAME' already exists."
else
	#create the group if it doesn't exist
	if ! getent group "$GROUP" > /dev/null; then
		echo " creating group '$GROUP'..."
		sudo groupadd "$GROUP"
	fi

	#create user with home directory and add to the group
	echo "creating user '$USERNAME'..."
	sudo useradd -m -s  /bin/bash -G "$GROUP" "$USERNAME"

	#set a default password (optional, force change on first login)
	echo "$USERNAME:ChangeMe123" | sudo chpasswd
	sudo passwd --expire "$USERNAME"

	echo "user '$USERNAME' created successfully and added to group '$GROUP'."
	echo "Default password: ChangeMe123 (user must change it on first login)"
fi

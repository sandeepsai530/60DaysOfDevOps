#!/bin/bash
#Write a script that installs multiple packages at once (e.g., git, vim, curl). The script should check if each package is already installed before attempting installation.

#define packages to install
PACKAGES=("git" "vim" "curl")

#loop through each package and check if its installed
for PACKAGE in "${PACKAGES[@]}"; do
	if dpkg -l | grep -qw "$PACKAGE"; then
		echo "$PACKAGE is already installed"
	else
		echo "Installing $PACKAGE.."
		sudo apt-get install -y "$PACKAGE" && \
		echo "✅ $PACKAGE installed successfully." || \
        	echo "❌ Failed to install $PACKAGE."
	fi
done

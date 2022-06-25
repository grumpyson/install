#!/bin/sh

# https://snapcraft.io/code
which joplin > /dev/null

if [ $? -eq 0 ]; then
	echo Joplin Installed
	exit
fi

echo Installing Joplin
sudo snap install joplin-desktop

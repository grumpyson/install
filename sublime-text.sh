#!/bin/sh

# https://snapcraft.io/sublime-text
app=subl
which $app > /dev/null

if [ $? -eq 0 ]; then
	echo $app Installed
	exit
fi

echo Installing $app
sudo snap install sublime-text --classic

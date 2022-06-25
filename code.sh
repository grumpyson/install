#!/bin/sh

# https://snapcraft.io/code
app=code
which $app > /dev/null

if [ $? -eq 0 ]; then
	echo $app Installed
	exit
fi

echo Installing $app
sudo snap install $app --classic

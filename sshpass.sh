#!/bin/sh

app=sshpass
which $app > /dev/null

if [ $? -eq 0 ]; then
	echo $app Installed
	exit
fi

echo Installing $app
sudo apt install $app

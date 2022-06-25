#!/bin/sh

# https://snapcraft.io/docs/installing-snap-on-kali

snap > /dev/null
if [ $? -eq 0 ]; then
	echo Snap Installed
	exit
fi

sudo apt update && sudo apt install snapd
systemctl enable --now snapd apparmor
sudo sh -c 'echo PATH=$PATH:/snap/bin >> /etc/environment'

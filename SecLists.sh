#!/bin/sh

if [ -f /usr/share/seclists/Discovery/Web-Content/raft-small-directories.txt ]; then
	echo Seclists Installed
fi

echo Installing SecLists
sudo apt install seclists

#!/bin/sh

# https://github.com/DominicBreuker/pspy

dir=/opt/pspy
if [ -d $dir ]; then
	echo pspy Installed
	exit
fi

echo Installing pspy
sudo mkdir -p $dir

sudo wget -q https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32 -P $dir
sudo wget -q https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64 -P $dir
sudo wget -q https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32s -P $dir
sudo wget -q https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64s -P $dir

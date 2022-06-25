#!/bin/sh

# https://www.kali.org/docs/containers/installing-docker-on-kali/
which docker > /dev/null
if [ $? -eq 0 ]; then
	echo Docker Installed
	exit
fi

echo Installing Docker
sudo apt update && sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo usermod -aG docker $USER

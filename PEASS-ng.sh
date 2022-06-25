#!/bin/sh

# https://github.com/carlospolop/PEASS-ng
dir=/opt/PEASS-ng
if [ -d $dir ]; then
	exit
fi

sudo mkdir -p $dir

for f in linpeas.sh winPEASany.exe winPEAS.bat; do
	curl -sL https://github.com/carlospolop/PEASS-ng/releases/latest/download/$f | sudo tee $dir/$f > /dev/null
done

#!/bin/sh

# https://github.com/jpillora/chisel/releases/tag/v1.7.7

dir=/opt/chisel
if [ -d $dir ]; then
	echo chisel Installed
	exit
fi

echo Installing chisel
sudo mkdir -p $dir
version=1.7.7
url=https://github.com/jpillora/chisel/releases/download/v${version}

for i in linux_386 linux_amd64 windows_386 windows_amd64
do
	filename=chisel_${version}_$i.gz
	wget -q -O - $url/$filename | gunzip | sudo tee $dir/"${filename%.*}" > /dev/null
done


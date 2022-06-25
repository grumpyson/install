#!/bin/sh

bin=$HOME/.local/bin
mkdir -p $bin

for i in $(ls ./bins); do
	if [ ! -f $bin/$i ]; then
		ln -s $(pwd)/bins/$i $bin/$i
	fi
done

grep 'export PATH=$PATH:'$bin ~/.zshrc > /dev/null 2>&1
if [ $? -eq 1 ]; then
	echo -n 'export PATH=$PATH:'$bin >> ~/.zshrc
	source ~/.zshrc
fi

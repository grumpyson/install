#!/bin/bash

# https://unix.stackexchange.com/questions/32182/simple-command-line-http-server

if [ -z "$1" ]; then
	echo File name required
	exit 1
fi

port=80
echo Serving $1 on port $port

{ echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <$1)\r\n\r\n"; cat $1; } | nc -l -p $port > /dev/null

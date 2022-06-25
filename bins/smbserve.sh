#!/bin/sh

# https://blog.ropnop.com/transferring-files-from-kali-to-windows/
inet=$(/sbin/ip -o -4 addr list tun0) 2>/dev/null
if [ $? -eq 0 ]; then
	inet=$(/sbin/ip -o -4 addr list tun0 | awk '{print $4}' | cut -d/ -f1)
else
	inet=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
fi

echo smb://$inet/share \($(pwd)\)
python3 /usr/share/doc/python3-impacket/examples/smbserver.py -smb2support share $(pwd)

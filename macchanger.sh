#!/bin/bash
clear
echo -e 'RUN AS ROOT'
echo -e ''
echo -e ''
if [ -f /usr/bin/toilet ]; then
        toilet -f smblock -F gay MAC SPOOFER
        echo -e '<------Coded by PSYCHO72------>'
else
	sudo apt-get install toilet -y 
	toilet -f smblock -F gay RUN PROGRAM AGAIN
	exit 0
fi
echo -e ""
echo -n "Enter Interface: "
read interface

echo -n "Enter New MAC Address: "
read mac

sudo ifconfig $interface down
sudo ifconfig $interface hw ether $mac 
sudo ifconfig $interface up

exit 0


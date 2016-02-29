#! /bin/bash
# start DNS2Proxy start
 
read -r -p "Are you ready to start DNS2Proxy? Only do this once SSLStrip has [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	cd /root/dns2proxy && python dns2proxy.py
	
else
    	echo DNS2proxy cancelled
echo finished
fi
$SHELL

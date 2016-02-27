#! /bin/bash

read -r -p "Are you sure you want to clear archive? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo Removing files and creating new folders
	cd /root
	rm -r airodumplog dropbox nmaplog wpslog etterlog giskismet
	mkdir airodumplog && mkdir dropbox && mkdir nmaplog && mkdir etterlog && mkdir giskismet && mkdir wpslog && mkdir sslstriplog
	cd airodumplog && mkdir pcap 
	cd ..
	cd wpslog && mkdir wpscrack
	cd ..
	cd giskismet && mkdir wififilter
	cd dropbox mkdir airodump && mkdir wps && mkdir nmap && mkdir ettercap && mkdir giskismet
	cd ..
else
    echo folder wipe and create cancelled
echo finished! 
fi
echo done!

#! /bin/bash
# clear archive

read -r -p "Are you sure you want to clear archive? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo clearing archive...
	cd /root
	rm -r archive && mkdir archive
	echo rebuilding archive
	cd archive
	mkdir airodumplog && cd airodumplog && mkdir pcap
	cd ..
	mkdir wpslog
	cd wpslog && mkdir wpscrack
	cd ..
	mkdir etterlog && mkdir nmaplog && mkdir giskismet
	cd giskismet && mkdir wififilter 
else
    echo archive wipe cancelled
echo finished! 
fi



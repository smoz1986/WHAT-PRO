#! /bin/bash
# start NMAP scan
 
echo Launching NMAP for network scanning...
echo How quickly do you want to scan, from a range of 1-5
read -p 'Speed: ' speedvar
echo Enter port range to scan i.e 1-63535 or 1,80,443 etc
read -p 'Port Range: ' portvar
echo Enter IP range to scan i.e. 192.168.0.1 or 192.168.0.1-5 or 192.168.0.1,192.168.0.4 etc
read -p 'IP Range: ' ipranvar
echo Enter filename
read -p 'Filename: ' filevar
nmap -sS -sV -sC -A -O -T$speedvar -p $portvar $ipranvar -v -o /root/nmaplog/$filevar.xml


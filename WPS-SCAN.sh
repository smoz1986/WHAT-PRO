#! /bin/bash
# WPS-Scanning

echo Starting WPS Scan...
echo What is the name of the wireless interface wlan0, wlan1 etc 
read -p 'Interface: ' invar
airmon-ng stop $invar
airmon-ng check kill
airmon-ng start $invar
airmon-ng check kill ${invar}mon
echo Enter filename
read -p 'Filename: ' filevar
wash -i ${invar}mon -o /root/wpslog/$filevar.log --ignore-fcs
echo Now stopping survey...

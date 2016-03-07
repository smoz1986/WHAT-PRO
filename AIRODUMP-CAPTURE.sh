#! /bin/bash
# airodump-capture

echo Starting AIRODUMP-NG capture mode...
echo What is the name of your wireless interface wlan0, wlan1 etc
read -p 'Interface: ' invar
airmon-ng stop $invar
airmon-ng check kill
airmon-ng start $invar
airmon-ng check kill ${invar}mon
echo Enter filename
read -p 'Filename: ' filevar
echo Enter target WiFi AP when you have more than one separate with a comma i.e. MACADDR1,MACADDR2
read -p 'WiFi AP: ' bssidvar
echo Enter target Channel. If a single channel just enter the single number. For multiple separate with a comma i.e. 1,6,11. If all type 1-14
read -p 'Channel: ' chanvar
airodump-ng ${invar}mon --beacons --gpsd -w /root/airodumplog/pcap/$filevar --bssid $bssidvar -c $chanvar --output-format pcap,csv,kismet,netxml --write-interval 1 --wps --manufacturer
echo Now stopping capture...

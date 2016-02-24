#! /bin/bash
# airodump-capture

echo Starting AIRODUMP-NG capture mode...
airmon-ng stop wlan0
airmon-ng check kill
airmon-ng start wlan0
airmon-ng check kill wlan0mon
echo Enter filename
read -p 'Filename: ' filevar
echo Enter target WiFi AP when you have more than one separate with a comma i.e. MACADDR1,MACADDR2
read -p 'WiFi AP: ' bssidvar
echo Enter target Channel. If a single channel just enter the single number. For multiple separate with a comma i.e. 1,6,11. If all type 1-14
read -p 'Channel: ' chanvar
airodump-ng wlan0mon --beacons --gpsd -w /root/airodumplog/pcap/$filevar --bssid $bssidvar -c $chanvar --output-format pcap,csv,kismet,netxml --write-interval 1 --wps --manufacturer
echo Now stopping capture...

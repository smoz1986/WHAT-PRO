#! /bin/bash
# start airmon-ng
 
echo Launching airodump-ng for scanning...
echo What is the name of your wireless interface wlan0, wlan1 etc
read -p 'Interface: ' invar
airmon-ng start $invar
airmon-ng check kill ${invar}mon
echo Enter filename
read -p 'Filename: ' filevar
echo Enter target Channel. If a single channel just enter the single number. For multiple separate with a comma i.e. 1,6,11. If all type 1-14
read -p 'Channel: ' chanvar
airodump-ng ${invar}mon --gpsd -w /root/airodumplog/$filevar -c $chanvar --wps --write-interval 1 --manufacturer --output-format csv,kismet,netxml,gps


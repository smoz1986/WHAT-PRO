#! /bin/bash
# Start loc-nogps

echo Starting loc-nogps...
cd /root/WHAT/geo-tools/loc-nogps
echo Enter location of survey netxml logs. If in airodump/pcap directory enter pcap. If not leave blank
read -p 'Log Path: ' locnvar
echo Enter filename
read -p 'Filename: ' filevar
./loc-nogps.py -f /root/airodumplog/$locnvar -o $filevar.html -w 


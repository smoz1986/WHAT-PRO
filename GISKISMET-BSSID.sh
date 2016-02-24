#! /bin/bash
# start GISKISMET with BSSID filter
 
echo Launching GISKISMET with WiFi AP filter...
echo Name of netxml file to be processed
read -p 'netxml file: ' $netxmlvar
echo Enter WiFi Access Points to be filtered. If more than one separate with a comma
read -p 'WiFi AP: ' bssidvar
echo Enter filename
read -p 'Filename: ' filevar
giskismet -x /root/airodumplog/$nexmlvar.kismet.netxml -q "select * from wireless" --bssid "$bssidvar" -o /root/giskismet/wififilter/$filevar

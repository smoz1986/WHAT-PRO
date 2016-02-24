#! /bin/bash
# start GISKISMET
 
echo Launching GISKISMET...
echo Name of netxml file to be processed
read -p 'netxml file: ' netxmlvar
echo Enter filename
read -p 'Filename: ' filevar
giskismet -x /root/airodumplog/$netxmlvar.kismet.netxml -q "select * from wireless" -o /root/giskismet/$filevar
$SHELL

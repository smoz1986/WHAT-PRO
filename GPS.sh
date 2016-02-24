#! /bin/bash
# Start GPS

echo DO NOT CLOSE THIS WINDOW WHILE SURVEYING!!! Just minimise it...
service gpsd stop
killall gpsd
gpsd -D 5 -N /dev/ttyUSB0


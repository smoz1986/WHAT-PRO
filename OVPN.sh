#! /bin/bash

service openvpn start
cd /etc/openvpn
echo What is the name of your OpenVPN file? - input the full file name i.e. blah.ovpn or blah.conf. Also make sure that your OpenVPN files are in the /etc/openvpn directory before continuing...
read -p 'OpenVPN file: ' ovpnvar
openvpn $ovpnvar
echo OpenVPN has started please close this terminal!

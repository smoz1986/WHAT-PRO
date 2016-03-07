#! /bin/bash
# WIRESHARK EAPOL CAPTURE

echo Starting Wireshark to confirm EAPOL capture of target AP...just agree to any dialogue that comes up. Close this window once Wireshark starts
echo What is the name of the wireless interface wlan0, wlan1 etc no need to input wlan0mon etc
read -p 'Interface: ' invar
sudo wireshark -k -Y 'eapol' -i ${invar}mon

#! /bin/bash
# WIRESHARK EAPOL CAPTURE

echo Starting Wireshark to confirm EAPOL capture of target AP...just agree to any dialogue that comes up. Close this window once Wireshark starts
sudo wireshark -k -Y 'eapol' -i wlan0mon

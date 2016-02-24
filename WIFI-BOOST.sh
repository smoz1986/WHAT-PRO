#! /bin/bash
# supercharge the wifi card

echo Boosting WiFi card power.....this cannot be reversed!!!
apt-get update
cp /lib/crda/regulatory.bin /lib/crda/regulatoryOLD.bin
cd /root/WHAT-PRO/wifi-boost/wireless-regdb-2014.06.13
make
mkdir /usr/lib/crda
cp /root/WHAT-PRO/wifi-boost/wireless-regdb-2014.06.13/regulatory.bin /usr/lib/crda/regulatory.bin
cp /root/WHAT-PRO/wifi-boost/wireless-regdb-2014.06.13/root.key.pub.pem /root/WHAT-PRO/wifi-boost/crda-1.1.3/pubkeys/root.key.pub.pem
cp /root/WHAT-PRO/wifi-boost/wireless-regdb-2014.06.13/linville.key.pub.pem /root/WHAT-PRO/wifi-boost/crda-1.1.3/pubkeys/linville.key.pub.pem
cp /lib/crda/pubkeys/benh@debian.org.key.pub.pem /root/WHAT-PRO/wifi-boost/crda-1.1.3/pubkeys/benh@debian.org.key.pub.pem
sed 's%REG_BIN?=/usr/lib/crda/regulatory.bin%REG_BIN?=/lib/crda/regulatory.bin%g' /root/WHAT-PRO/wifi-boost/crda-1.1.3/Makefile > /root/WHAT-PRO/wifi-boost/crda-1.1.3/Makefile1 && mv /root/WHAT-PRO/wifi-boost/crda-1.1.3/Makefile1 /root/WHAT-PRO/wifi-boost/crda-1.1.3/Makefile
cd /root/WHAT-PRO/wifi-boost/crda-1.1.3
make
make install
cp /root/WHAT-PRO/wifi-boost/rc.local /etc/rc.local
echo All done, time to reboot...
reboot


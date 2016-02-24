#! /bin/bash
# iSniff GPS startup script

echo Starting iSniff. When prompted answer NO to creating a new superuser. When iSniff-GPS has started open Iceweasel with the url - 127.0.0.1:8000/apple-wloc/ to locate WiFi Access Points
cd /root/WHAT-PRO/geo-tools/iSniff-GPS
./manage.py syncdb
./manage.py runserver 127.0.0.1:8000

#! /usr/bin/env python

# WiFi Auditing Tool
# A multi-capable tool for automating WiFi attacks and moving data around

from Tkinter import *
import subprocess

window = Tk()
window.title ( 'WiFi Hacking Attack Tool v1.0' )
WINDOW_SIZE = "600x400"
img = PhotoImage( file = '/root/WHAT-PRO/Wifi_Logo.gif' )
small_img = PhotoImage.subsample( img , x = 3 , y = 3 )
label = Label( window , image = small_img , bg = 'red')
label.grid(row=0,column=2) 

btn_end = Button( window , text = 'Close' , command=exit )
btn_end.grid(row=10,column=2)

def runShellScript():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./SURVEY-LAUNCH.sh'])

btn_scn = Button( window , text = 'Survey' , command=runShellScript , width = 15 )
btn_scn.grid(row=1,column=0 ) 

def runShellScript1():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./EXPLOIT-LAUNCH.sh'])

btn_pcp = Button( window , text = 'Exploit' , command=runShellScript1 , width = 15 )
btn_pcp.grid(row=1,column=1)

def runShellScript2():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./GEO-LAUNCH.sh'])

btn_pcp = Button( window , text = 'Geolocation' , command=runShellScript2 , width = 15 )
btn_pcp.grid(row=1,column=2)

def runShellScript3():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./COMMS-LAUNCH.sh'])

btn_ovp = Button( window , text = 'Communications' , command=runShellScript3 , width = 15 )
btn_ovp.grid(row=1,column=3)

def runShellScript4():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./FOLDERS-LAUNCH.sh'])

btn_dad = Button( window , text = 'Admin' , command=runShellScript4 , width = 15 )
btn_dad.grid(row=1,column=4)

#def runShellScript5():
#	import subprocess
#	subprocess.call(['/root/WHAT/./DEAUTH-CLIENT-LAUNCH.sh'])

#btn_dac = Button( window , text = 'WiFi AP-Client Deauth' , #command=runShellScript5 , width = 15 )
#btn_dac.grid(row=3,column=0)

#def runShellScript6():
#	import subprocess
#	subprocess.call(['/root/WHAT/./DB-LAUNCH.sh'])

#btn_db = Button( window , text = 'Move files to DB' , #command=runShellScript6 , width = 15 )
#btn_db.grid(row=3,column=5)

#def runShellScript7():
#	import subprocess
#	subprocess.call(['/root/WHAT/./WIPE-CREATE-LAUNCH.sh'])

#btn_dad = Button( window , text = 'Renew Storage' , command=runShellScript7 , width = 15 )
#btn_dad.grid(row=4,column=5)

#def runShellScript8():
#	import subprocess
#	subprocess.call(['/root/WHAT/./WIFI-BOOST.sh'])

#btn_dad = Button( window , text = 'Card Power Boost' , command=runShellScript8 , width = 15 )
#btn_dad.grid(row=2,column=3)

#def runShellScript9():
#	import subprocess
#	subprocess.call(['/root/WHAT/./ISNIFF-LAUNCH.sh'])

#btn_isn = Button( window , text = 'Start iSniff' , command=runShellScript9 , width = 15 )
#btn_isn.grid(row=3,column=3)

#def runShellScript10():
#	import subprocess
#	subprocess.call(['/root/WHAT/./LOCNOGPS-LAUNCH.sh'])

#btn_loc = Button( window , text = 'Start loc-nogps' , command=runShellScript10 , width = 15 )
#btn_loc.grid(row=4,column=3)

window.mainloop()


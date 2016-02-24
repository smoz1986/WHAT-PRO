#! /usr/bin/env python

# WiFi Auditing Tool Survey
# WiFi and Network Scanning Tools

from Tkinter import *
import subprocess

window = Tk()
window.title ( 'WHAT File Admin v1.0' )
WINDOW_SIZE = "600x400"
img = PhotoImage( file = '/root/WHAT-PRO/Wifi_Logo.gif' )
small_img = PhotoImage.subsample( img , x = 4 , y = 4 )
label = Label( window , image = small_img , bg = 'red')
label.grid(row=0,column=0) 

btn_end = Button( window , text = 'Close' , command=exit )
btn_end.grid(row=10,column=0)

def runShellScript5():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./WIPE-CREATE-LAUNCH.sh'])

btn_scn = Button( window , text = 'Wipe & Create Files' , command=runShellScript5 , width = 15 )
btn_scn.grid(row=1,column=0 ) 

def runShellScript6():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./DB-LAUNCH.sh'])

btn_pcp = Button( window , text = 'Move files to DB' , command=runShellScript6 , width = 15 )
btn_pcp.grid(row=2,column=0)

def runShellScript7():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./ARCHIVE-LAUNCH.sh'])

btn_pcp = Button( window , text = 'Archive files' , command=runShellScript7 , width = 15 )
btn_pcp.grid(row=3,column=0)

def runShellScript3():
	import subprocess
	subprocess.call(['/root/WHAT-PRO/./CLEAR-ARCHIVE-LAUNCH.sh'])

btn_ovp = Button( window , text = 'Clear Archive' , command=runShellScript3 , width = 15 )
btn_ovp.grid(row=4,column=0)

#def runShellScript4():
#	import subprocess
#	subprocess.call(['/root/WHAT/./FOLDERS-LAUNCH.sh'])

#btn_dad = Button( window , text = 'Admin' , command=runShellScript4 , width = 15 )
#btn_dad.grid(row=1,column=4)

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


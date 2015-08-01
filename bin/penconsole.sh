#!/bin/sh
#===========================================================
#	File: /usr/local/bin/penconsole.sh
#	Author: Donald Raikes <donraikes1030@gmail.com>
#	Date:	07/31/2015
#
#	Adapted from http://www.thehackerchronicles.com
#
#	Opens various windows with particular processes running in them.
#===========================================================
echo \[\-\] Starting Logging Console
sleep 2
xterm -C -geometry 137×8-0+750 &

echo \[\-\] Starting tcpdump console
gnome-terminal –geometry=90×6-0+900 –hide-menubar -x tcpdump -i eth0 not icmp

echo \[\-\] Starting metasploit console
gnome-terminal –geometry=90×20-0+350 –hide-menubar -x msfconsole

echo \[\-\] Opening scripts and notes
# The below gnome-terminal lines are all one line, not seven individual lines.
gnome-terminal –geometry=90×12-0+5 –window –title=”Information Gathering” –active -e “vim  /root/Documents/scripts/informationgathering” –tab –title=”Vulnerability Analysis” -e “vim /root/Documents/scripts/vulnerabilityanalysis” –tab –title=”Web Apps” -e “vim /root/Documents/scripts/webapps” –tab –title==”Password Attacks” -e “vim /root/Documents/scripts/pwdattacks” –tab –title==”Exploit Tools” -e “vim /root/Documents/scripts/exploittools



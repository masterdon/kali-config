#!/bin/sh
#==============================================
#	File: kali-config/setup.sh
#	Author:	Donald Raikes (masterdon) <donraikes1030@gmail.com>
#	Date:	07/31/2015
#
#	This script istalls all the files from this repository 
#	into their proper locations and does all other necessary setup steps.
#==============================================

# step 1: configure services:
update-rc.d postgresql enable
update-rc.d metasploit enable
update-rc.d ssh enable
service postgresql start
service metasploit start
service ssh start

# Step 2: copy scripts and set permissions
cp bin/* /usr/local/bin
chmod +x /usr/local/bin/*

# step 3: Copy files to /etc and its subdirectories
cp etc/.env /etc
cp etc/skel/.exrc /etc/skel
cp etc/skel/.bashrc /etc/skel

# Step 4: copy configuration files to /root:
cp etc/skel/.exrc /root
cp etc/skel/.bashrc /root

# step 5: Create a non-root user:
useradd -m -G sudo -s /bin/bash draikes


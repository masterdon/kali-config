#!/bin/sh
#============================================================
#	File:	listaddr
#	Author:	Donald Raikes <don.raikes@nyu.edu>
#	Date:	09/01/2014
#
#	Purpose:
#		List all unique address pairs.
#============================================================
echo -n "capture file: "
read CAPFILE
echo -n "Output file: "
read LOGFILE

tshark -r $CAPFILE \
	| awk '{printf("%s %s\n",$3,$5);}' \
	| sort \
	| uniq > $LOGFILE

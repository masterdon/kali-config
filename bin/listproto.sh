#!/bin/sh
#============================================================
#	File:	listproto
#	Author:	Donald Raikes <don.raikes@nyu.edu>
#	Date:	09/01/2014
#
#	Purpose:
#		List all unique protocols from this capture file.
#============================================================
echo -n "capture file: "
read CAPFILE
echo -n "Output file: "
read LOGFILE

tshark -r $CAPFILE \
	| awk '{printf("%s\n",$6);}' \
	| sort \
	| uniq > $LOGFILE

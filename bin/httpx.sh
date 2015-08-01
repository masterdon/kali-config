#!/bin/sh
#============================================================
#	File:	httpx
#	Author:	Donald Raikes <don.raikes@nyu.edu>
#	Date:	09/01/2014
#
#	Purpose:
#		Extract only HTTP packets from the input capture file and
#	print the minimum of necessary information about them.
#============================================================
echo -n "capture file: "
read CAPFILE
echo -n "Output file: "
read LOGFILE

tshark -r $CAPFILE -V -R "tcp.port ==80 && (http.request || http.response)" | \
	awk "/Hypertext Transfer Protocol/,/Frame/ { print }; \
	     /Transmission Control Protocol/{print};
		 /Internet Protocol/{print}" | \
	grep -v Frame > $LOGFILE

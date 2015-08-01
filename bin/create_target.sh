#!/bin/sh
#-------------------------------------------------------
#	File:	/usr/local/bin/create_target
#	Author:	Donald Raikes <donraikes1030@gmail.com>
#	Date:	08/13/2014
#
#	Create a new openvas target based on inputs from the user.
#-------------------------------------------------------
echo -n "target name: "
read tgtname
echo -n "target ip address(s): "
read tgtip
resp=`omp -u root --xml="<create_target> \
	<name>$tgtname</name> \
	<hosts>$tgtip</hosts> \
	</create_target> \
"`
tgtid=`echo $resp | awk '{printf("%s\n",$4);}'`
echo $tgtname $tgtid 
echo $tgtname $tgtid
exit 0

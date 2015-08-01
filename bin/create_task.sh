#!/bin/sh
#-------------------------------------------------------
#	File:	/usr/local/bin/create_task.sh
#	Author:	Donald Raikes <donraikes1030@gmail.com>
#	Date:	07/31/2015
#
#-------------------------------------------------------
omp -u root -w toor --xml='<create_task> \
	<name>ScanRouter</name> \
	<config id="74db13d6-7489-11df-91b9-002264764cea"/> \
      <target id="9b09e701-aa82-4ba3-abc2-a5bc94729092"/> \
	</create_task>'
exit 0

#!/bin/bash

#This script is to fping a list of IP addresses
#Example; sh ip_fping.sh FILENAME

#This makes filename as variable; enter filename on script execute 
FILENAME=$1

#This will “cat” all lines in specified filename
LINES=$(cat $FILENAME)

#This will run fping on all lines/IP's that are inside the file
for LINE in $LINES
do
	fping "$LINE"
done

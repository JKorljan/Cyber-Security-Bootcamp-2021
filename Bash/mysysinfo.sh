#!/bin/bash

# Check if script was run as root. Exit if false
if [ $UID != 0 ]
then 
	echo "Please dont run under sudo"
exit
fi

#Define variables
output=~/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
perm=$(find /home -type f -perm 777)

# This checks if research directory is created or not, will create if not created, ends if created already 
if [ ! -d  ~/research ]
then
	echo "~/research not created, creating the directory"
	mkdir ~/research
else
	echo "~/research directory exists"
fi

# This checks if sys_info.txt exists, if it exists it deletes it, if it does not exist it ends
if [ -f ~/research/sys_info.txt]
then
	echo "~/research/sys_info.txt exists, deleting file"
	rm ~/research/sys_info.txt
else
	echo "~/research/sys_info.txt does not exist, no action taken"
fi

echo "A Quick System Audit Script" > $output
date >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "IP Info: $ip \n" >> $output
echo "Hostname: $(hostname -s) " >> $output
echo -e "\n777 Files:" >>  $output
$perm >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output


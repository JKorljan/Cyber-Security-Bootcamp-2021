
#!/bin/bash

#This makes filename as variable; enter filename on script execute 
FILENAME=$1

#This will “cat” all lines in specified filename
LINES=$(cat $FILENAME)

#This will run fping on all lines that have been listed from cat and specified file
for LINE in $LINES
do
	sudo nmap -sS "$LINE"
done

#!/bin/bash

echo "A Quick System Audit Script"
date
echo ""
echo "Machine Type Info:"
echo $MACHTYPE
echo "Uname info: $(uname -a)"
echo ""
echo "IP Info: $(ip addr | grep inet | tail -2 | head -1)"
echo ""
echo "Hostname: $(hostname -s) "
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free
echo ""
echo "CPU Info:"
lscpu | grep CPU
echo ""
echo "Disk Usage:"
df -H | head -2
echo ""
echo "Who is logged in: \n $(who)"
echo ""


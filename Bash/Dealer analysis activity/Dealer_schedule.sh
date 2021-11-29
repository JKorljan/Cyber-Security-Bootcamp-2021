#!/bin/bash
cat $1_Dealer_schedule | grep $2 | grep $3 | awk -F" " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses.txt

#How to run script

#sh Dealer_schedule.sh (DATE) (HOUR) (AM/PM)

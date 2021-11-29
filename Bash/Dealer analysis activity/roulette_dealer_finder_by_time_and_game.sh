#!/bin/bash
cat $1_Dealer_schedule | grep $2 | awk -F" " '{print $1,$2,$'$3',$'$4'}'

# Instructions below on how to execute script to get dealer schedule based on date, time and game

# Blackjack = sh roulette_dealer_finder_by_time_and_game.sh (DATE) (TIME) 3 4
# Roulette = sh roulette_dealer_finder_by_time_and_game.sh (DATE) (TIME) 5 6
# Texas = sh roulette_dealer_finder_by_time_and_game.sh (DATE) (TIME) 7 8

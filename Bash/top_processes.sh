#!/bin/bash

# This script find top processes and outputs to a file

ps aux --sort -%mem | awk {'print $1, $2, $3, $4, $11'} | head > top_processes.txt

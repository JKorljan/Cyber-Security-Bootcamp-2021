#/bin/bash

# This script finds files with specified permissions and outputs to a file

sudo find /home -type f -perm 777 > exec_list.txt

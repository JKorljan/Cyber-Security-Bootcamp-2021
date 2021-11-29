#!/bin/bash

# Show country ISO code; enter IP address into $1
#Example; sh IP_lookup.sh 0.0.0.0
curl -s http://ipinfo.io/$1 | grep country | awk -F" " '{print $2}'


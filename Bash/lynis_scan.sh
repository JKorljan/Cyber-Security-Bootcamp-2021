#!/bin/bash

#This script performs lynis audit scan and outputs to a file

sudo lynis audit system >> /tmp/lynis_scan.log

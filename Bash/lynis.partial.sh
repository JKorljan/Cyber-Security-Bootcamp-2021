#!/bin/bash

#This script performs lynis scan on specific groups and outputs to a file

lynis audit --tests-from-group malware,authentication,networking,storage,filesystems >> /tmp/lynis.partial_scan.log

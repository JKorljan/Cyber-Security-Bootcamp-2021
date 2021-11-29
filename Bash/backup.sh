#!/bin/bash

#This script acrhives and compresses specified files, and generates reports on file and disk space

mkdir -p /var/backups
tar -cvzf /var/backups/home.tar.gz /home
mv /var/backups/home.tar.gz /var/backups/home.09232021.tar.gz
ls -lh /var/backups > /var/backups/file_report.txt
free -h > /var/backups/disk_report.txt


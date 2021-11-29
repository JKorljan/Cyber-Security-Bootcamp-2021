#!/bin/bash

#This script removes all files in tmp's and clears caches

rm -rf /tmp/*
rm -rf /var/tmp/*
apt clean -y
rm -rf ~/.cache/thumbnails

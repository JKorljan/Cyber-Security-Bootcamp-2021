#!/bin/bash

#This script updates, uprades and removes system packages

apt update -y
apt upgrade -y
apt full-upgrade -y
apt autoremove --purge -y

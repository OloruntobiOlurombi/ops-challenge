#!/bin/bash 
#add fix to exercise1 here 

# Firstly I checked for Internet Connectivity on Server1
ping -c 4 8.8.8.8 

# Check the Check DNS Resolution
nslookup www.textfiles.com

# Disable Firewall Configuration 
sudo ufw disable
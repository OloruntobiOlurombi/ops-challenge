#!/bin/bash
# Define the hostname you want to remove
HOSTNAME_TO_REMOVE="ascii-art.de"

# Use sed to remove the entry from the hosts file
sudo sed -i "/$HOSTNAME_TO_REMOVE/d" /etc/hosts

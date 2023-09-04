#!/bin/bash
#add fix to exercise5-server1 here

# Generate SSH Key Pair if it doesn't exist
if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -N ""
fi

# Copy Public Key to "server2"
ssh-copy-id vagrant@192.168.60.11

# Disable Strict Host Key Checking for "server2"
echo -e "Host 192.168.60.11\n  StrictHostKeyChecking no" >> ~/.ssh/config

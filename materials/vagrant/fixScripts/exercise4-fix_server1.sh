#!/bin/bash
#add fix to exercise4-server1 here 


# Define the IP address and hostname
ip_address="192.168.60.10" #"127.0.2.1" #"192.168.60.10"  # Change this to your desired IP address
hostname="server1" # Change this to your desired hostname

# Add an entry to /etc/hosts
sudo sh -c "echo '$ip_address $hostname' >> /etc/hosts"

# Define the nameserver
nameserver="127.0.0.53" # Change this to your desired nameserver

# Add nameserver to /etc/resolv.conf
sudo sh -c "echo 'nameserver $nameserver' > /etc/resolv.conf"

echo "IP address and nameserver added to /etc/hosts and /etc/resolv.conf."


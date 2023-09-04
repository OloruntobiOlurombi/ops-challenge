#!/bin/bash
#add fix to exercise5-server2 here

# Configure SSH to disable password authentication
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/ChallengeResponseAuthentication yes/ChallengeResponseAuthentication no/' /etc/ssh/sshd_config

# Restart the SSH service
sudo systemctl restart sshd


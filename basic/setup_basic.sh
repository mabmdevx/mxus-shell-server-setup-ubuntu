#!/bin/bash

set -e

# Install Basic Utilities
echo -e "\n-Installing Basic Utilities..."
sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y nano
sudo apt-get install -y git
echo -e "\nDone"

# Create user 'srvadmin'
echo -e "\n-Creating user - srvadmin"
useradd -m -d /home/srvadmin srvadmin

# Add user 'srvadmin' to sudoers
usermod -aG sudo srvadmin

# Set password for user 'srvadmin'
passwd srvadmin
echo -e "\nDone"
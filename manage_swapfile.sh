#!/bin/bash
# Script to remove, create, and set the size of the swapfile in Oracle VirtualBox VM

set -e

# Turn off all swap
swapoff -a

# Remove old swapfile if it exists
if [ -f /swapfile ]; then
  rm /swapfile
fi

# Create a new swapfile of 3GB
fallocate -l 3G /swapfile

# Set correct permissions
chmod 600 /swapfile

# Make swap area
mkswap /swapfile

# Enable swap
swapon /swapfile

# Show swap status
swapon --show

# Optionally, display free memory
free -h

#!/bin/bash
# Install Terraform

# Update and install necessary packages
sudo apt-get update -y
sudo apt-get install -y git
echo 'GIT INSTALL COMPLETE'
sudo mkdir /nodesetup
sudo git clone $REPO_URL /nodesetup
sudo cd /nodesetup
sudo terraform validate && terraform apply
#!/bin/bash

# Install packages
sudo apt update
sudo apt install -y git software-properties-common build-essential apt-transport-https python3-pip 

# Install ansible
pip3 install ansible

# Clone the dotfiles repo
git clone git@github.com:ddinh/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Install and configure brew
source <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Install and configure dotfiles
ansible-playbook --ask-become-pass -i ~/dotfiles/hosts ~/dotfiles/dotfiles.yml

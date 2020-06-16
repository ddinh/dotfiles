#!/bin/bash

# Install ansible
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible build-essential

# Install git if needed
if ! [ -x "$(command -v git)" ]; then
	sudo apt install -y git
fi

# Clone the dotfiles repo
git clone git@github.com:ddinh/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Install and configure brew
source <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Install and configure dotfiles
ansible-playbook --ask-become-pass -i ~/dotfiles/hosts ~/dotfiles/dotfiles.yml

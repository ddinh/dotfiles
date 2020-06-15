#!/bin/bash

sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

source <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

ansible-playbook -i ~/dotfiles/hosts ~/dotfiles/dotfiles.yml

git config --global user.name didnh
git config --global user.email ddinh@users.noreply.github.com

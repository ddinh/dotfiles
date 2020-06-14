#!/bin/bash

sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

ansible-playbook -i hosts dotfiles.yml

git config --global user.name didnh
git config --global user.email ddinh@users.noreply.github.com

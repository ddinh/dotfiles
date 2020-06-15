#!/bin/bash
# A script to execute a single role in the playbook
# Usage:  ./role.sh ROLE

ansible-playbook -i hosts dotfiles.yml --tags $@

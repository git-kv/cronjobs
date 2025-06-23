#! /bin/bash
cd ~/ansible
ANSIBLE_LOG_PATH=~/ansible_logs/update_hosts_log.txt ~/.local/bin/ansible-playbook ~/ansible/update_hosts.yml

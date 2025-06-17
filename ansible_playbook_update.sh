#! /bin/bash
cd /home/keith/ansible
ANSIBLE_LOG_PATH=/home/keith/ansible_logs/update_log.txt /home/keith/.local/bin/ansible-playbook /home/keith/ansible/update.yml

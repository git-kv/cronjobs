#! /bin/bash
# default log
mv /home/keith/ansible_logs/ansible_log.txt "/home/keith/ansible_logs/$(date --date='yesterday' +%Y-%m-%d)_ansible_log.txt"

# log for daily update playbook
mv /home/keith/ansible_logs/update_log.txt "/home/keith/ansible_logs/$(date --date='yesterday' +%y-%m-%d)_update_log.txt"
find /home/keith/ansible_logs -type f -mtime +30 -delete

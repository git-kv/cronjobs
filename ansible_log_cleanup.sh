#! /bin/bash
# backup default log
mv /home/keith/ansible_logs/ansible_log.txt "/home/keith/ansible_logs/$(date --date='yesterday' +%Y-%m-%d)_ansible_log.txt"

# backup log for daily update playbook
mv /home/keith/ansible_logs/update_log.txt "/home/keith/ansible_logs/$(date --date='yesterday' +%y-%m-%d)_update_log.txt"

# delete log files older than 30 days
find /home/keith/ansible_logs -type f -mtime +30 -delete

#! /bin/bash
# home default log
mv ~/ansible_logs/ansible_log.txt "~/ansible_logs/$(date --date='yesterday' +%Y-%m-%d)_ansible_log.txt"

# home log for daily update playbook
mv ~/ansible_logs/update_log.txt "~/ansible_logs/$(date --date='yesterday' +%Y-%m-%d)_update_log.txt"

# home log for updating host files
mv ~/ansible_logs/update_hosts_log.txt "~/ansible_logs/$(date --date='yesterday' +%Y-%m-%d)_update_hosts_log.txt"

# delete log files older than 30 days
find ~/ansible_logs -type f -mtime +30 -delete

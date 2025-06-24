#! /bin/bash
# home default log
cd ~/ansible_logs
test -f ansible_log.txt && mv ansible_log.txt "$(date --date='yesterday' +%Y-%m-%d)_ansible_log.txt"

# home log for daily update playbook
test -f update_log.txt && mv update_log.txt "$(date --date='yesterday' +%Y-%m-%d)_update_log.txt"

# home log for updating host files
test -f update_hosts_log.txt && mv update_hosts_log.txt "$(date --date='yesterday' +%Y-%m-%d)_update_hosts_log.txt"

# delete log files older than 30 days
find ~/ansible_logs -type f -mtime +30 -delete

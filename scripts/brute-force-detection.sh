#!/bin/bash

LOG="/var/log/auth.log"
ALERT_LOG="$HOME/soc-lab/logs/alerts.log"

echo "=== SSH Brute Force SOC Detection ==="

grep "Failed password" $LOG \
| awk '{print $(NF-3)}' \
| grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' \
| sort \
| uniq -c \
| sort -nr \
| while read count ip
do

	if [ $count -ge 10 ]; then
		severity="HIGH"
	elif [$count -ge 5 ]; then
		severity="MEDIUM"
	else 
		severity="LOW"
	fi

	echo "[ALERT] $severity - $ip - $count failed attempts"

	echo "S(date) | $severity | SSH Brute Force | IP: $ip | Attempts: $count" >> $ALERT_LOG

done

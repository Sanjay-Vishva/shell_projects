#!/bin/bash
threshold=80
usage=$(df -h / | grep -v Filesystem | awk '{print $5}' | sed 's/%//')

if [ $usage -gt $threshold ]; then
    echo "Disk usage is above $threshold%: $usage%" | mail -s "Disk Usage Alert" admin@example.com
else
    echo "Disk usage is under control: $usage%"
fi

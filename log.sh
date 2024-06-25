#!/bin/bash
log_dir="/var/log/myapp"
find $log_dir -type f -name "*.log" -mtime +7 -exec rm -f {} \;
echo "Old log files deleted from $log_dir"

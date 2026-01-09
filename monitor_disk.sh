#!/bin/bash

THRESHOLD=80
LOGFILE="/var/log/disk_monitor.log"

USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "$(date): WARNING - Disk usage is ${USAGE}%" >> $LOGFILE
else
    echo "$(date): OK - Disk usage is ${USAGE}%" >> $LOGFILE
fi

#!/bin/bash
# autosort_scheduler.sh - Schedule autosort.sh using crontab


TASK="/home/hemanth/Downloads/Sorted/sh/autosort.sh"

CRON_JOB="* * * * * $TASK"

# Check if the job already exists
(crontab -l 2>/dev/null | grep -F "$TASK") && {
    echo "AutoSort is already scheduled!"
    exit 0
}

# Add the job to cron
(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -

echo "✅ AutoSort has been scheduled! It’ll run every 5 minutes."


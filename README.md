# simple_task_schedulerr
A shell script that uses  crontab to schedule and run another script at a specific  time or interval.

This script makes the sorting process automatic using cron.
Instead of manually running autosort.sh, this one schedules it to run every 5 minutes — like your own personal cleaning robot.

What it does:

Checks if the AutoSort task is already scheduled in crontab.

If not, it adds a new cron job that runs autosort.sh every 5 minutes.

Prints a confirmation when the job is successfully scheduled.

How to Use

Make both scripts executable:

chmod +x autosort.sh autosort_scheduler.sh


Run the scheduler:

./autosort_scheduler.sh


Sit back. Every 5 minutes, your downloads will be sorted automatically! 

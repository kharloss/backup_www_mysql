# backup_www_mysql
bash backup mysql and files
via original post : https://nicaw.wordpress.com/2013/04/18/bash-backup-rotation-script/

This folder structure has to be created manually. Rotation script will take anything in incomming folder and move it to appropriate destination backup archive.

Folders:
drwxr-xr-x 15 root root 4096 Apr 23 06:44 backup.daily
drwxr-xr-x  4 root root 4096 Apr  1 06:29 backup.monthly
drwxr-xr-x 10 root root 4096 Apr 20 06:38 backup.weekly
drwxr-xr-x  2 root root 4096 Apr 23 06:44 incoming

Files:
-rwxr-x---  1 root root 1386 Feb 21 11:53 backup.sh
-rwxr-x---  1 root root 1386 Feb 21 11:53 backup_cron.sh

Please note – only file rotation is performed, it is up to you to copy your backup to source folder (incoming). For faster operations, files are moved from the source folder! Here is what I use on one of the servers, to backup entire website:

use crontab -e 
to add cron schedules like

30 0 * * *   /backup/backup.sh
45 0 * * *   /backup/backup_cron.sh


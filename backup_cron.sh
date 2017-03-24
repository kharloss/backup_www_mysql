#!/bin/bash
#@author Adi Iacob
#@description Backup script 

BACKUP_DIR=/backup
FILES_DIR=/var/www

# Dump MySQL tables
mysqldump -h 127.0.0.1 -u root -your_password --events --all-databases > $BACKUP_DIR/incoming/mysql_dump.sql

# Compress tables and files
tar -cvzf $BACKUP_DIR/incoming/archive.tgz $BACKUP_DIR/incoming/mysql_dump.sql $FILES_DIR

# Cleanup
rm $BACKUP_DIR/incoming/mysql_dump.sql

# Run backup rotate
cd $BACKUP_DIR
bash /backup/backup.sh


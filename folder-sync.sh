#!/bin/bash

NOW=$(date +"%d-%m-%Y_%H-%M")
DIR=/mnt/vdb1/uploads
SERVER=user@ip
REMOTE_DIR=/home/user_name/backup_servers/app_name

ssh $SERVER "mkdir -p $REMOTE_DIR/uploads"

# rsync options: 
# -h output numbers in a human-readable format
# -v increase verbosity
# -r recurse into directories
# -P keep partially transferred files and show progress during transfer
# -t preserve times
rsync -h -v -r -P -t $DIR $SERVER:$REMOTE_DIR/uploads

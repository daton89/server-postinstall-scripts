#!/bin/bash

NOW=$(date +"%d-%m-%Y_%H-%M") # 19-07-2017_10-55
DIR=/mnt/vdb1/uploads # local folder to sync with remote 
REMOTE_DIR=/home/user_name/backup_servers/app_name # remote folder to sync with local
SERVER=user@ip # remote server 

ssh $SERVER "mkdir -p $REMOTE_DIR/uploads" # create remote folder if it doesn't exists

# rsync options: 
# -h output numbers in a human-readable format
# -v increase verbosity
# -r recurse into directories
# -P keep partially transferred files and show progress during transfer
# -t preserve times
rsync -h -v -r -P -t $DIR $SERVER:$REMOTE_DIR/uploads

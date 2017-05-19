#!/bin/bash

NOW=$(date +"%d-%m-%Y_%H-%M")
DIR=/mnt/vdb1/uploads
SERVER=user@ip
REMOTE_DIR=/home/user_name/backup_servers/app_name

ssh $SERVER "mkdir -p $REMOTE_DIR/uploads"
rsync -az $DIR $SERVER:$REMOTE_DIR

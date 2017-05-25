#!/bin/bash

NOW=$(date +"%d-%m-%Y_%H-%M")
DIR=/home/$(whoami)/mongo-backup/$NOW
SERVER=user@ip
REMOTE_DIR=/home/$(whoami)/backup_servers/app_name
MONGO_SERVER=localhost
MONGO_PORT=27017

mkdir $DIR
mongodump --host $MONGO_SERVER --port $MONGO_PORT --out $DIR
ssh $SERVER "mkdir -p $REMOTE_DIR/mongodump"
scp -r -C $DIR $SERVER:$REMOTE_DIR/mongodump/

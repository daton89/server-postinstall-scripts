#!/bin/bash

NOW=$(date +"%d-%m-%Y_%H-%M") # 19-07-2017_10-55
DIR=/home/$(whoami)/mongo-backup/$NOW
MONGO_SERVER=localhost
MONGO_PORT=27017

mkdir -p $DIR
mongodump --host $MONGO_SERVER --port $MONGO_PORT --out $DIR

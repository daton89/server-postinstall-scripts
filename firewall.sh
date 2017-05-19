#!/bin/bash

sudo apt-get install ufw

sudo ufw default deny incoming

sudo ufw default allow outgoing

sudo ufw allow ssh

sudo ufw enable

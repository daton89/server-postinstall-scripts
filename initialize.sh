#!/bin/bash

sudo apt-get update

sudo apt-get upgrade

./firewall.sh

./common-package.sh

./ssh-key-generator.sh

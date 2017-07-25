#!/bin/bash

sudo apt-get update

./common-package.sh

./firewall.sh

./ssh-key-generator.sh

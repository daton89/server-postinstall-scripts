#!/bin/ssh

ssh-keygen -t rsa

yes 

yes 

# TODO - Disable the Password for Root Login
# ensured that you can log in with the SSH keys alone

#sudo nano /etc/ssh/sshd_config

#find the line that includes PermitRootLogin and modify it to ensure that users can only connect with their SSH key:

#PermitRootLogin without-password

#Put the changes into effect:

#reload ssh

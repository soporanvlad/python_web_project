#!/bin/bash


USERNAME=$1
PASSWORD="info18"

sudo sysadminctl -addUser $USERNAME -password $PASSWORD

sudo mkdir -p /Users/$USERNAME/git
sudo mkdir -p /Users/$USERNAME/.ssh

sudo chmod 700 /Users/$USERNAME/.ssh
sudo touch /Users/$USERNAME/.ssh/authorized_keys
sudo chmod 600 /Users/$USERNAME/.ssh/authorized_keys

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCB007n/ww+ouN4gSLKssMxXnBOvf9LGt4L
ojG6rs6hPB09j9R/T17/x4lhJA0F3FR1rP6kYBRsWj2aThGw6HXLm9/5zytK6Ztg3RPKK+4k
Yjh6541NYsnEAZuXz0jTTyAUfrtU3Z5E003C4oxOj6H0rfIF1kKI9MAQLMdpGW1GYEIgS9Ez
Sdfd8AcCIicTDWbqLAcU4UpkaX8KyGlLwsNuuGztobF8m72ALC/nLF6JLtPofwFBlgc+myiv
O7TCUSBdLQlgMVOFq1I2uPWQOkOWQAHukEOmfjy2jctxSDBQ220ymjaNsHT4kgtZg2AYYgPq
dAv8JggJICUvax2T9va5 gsg-keypair" | sudo tee -a /Users/$USERNAME/.ssh/authorized_keys > /dev/null

sudo mkdir -p /Users/$USERNAME/git/project.git$USERNAME
cd /Users/$USERNAME/git/project.git$USERNAME
sudo git init --bare

sudo chown -R $USERNAME:$USERNAME /Users/$USERNAME

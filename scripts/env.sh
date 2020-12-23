#!/bin/sh

sudo cat "$MC_SK" >> /root/.ssh/authorized_keys
sudo sed -i 's/#StrictModes no/StrictModes yes/g' /etc/ssh/sshd_config
sudo service sshd restart

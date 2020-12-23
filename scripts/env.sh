#!/bin/sh

echo "$1" >> /root/.ssh/authorized_keys
sed -i 's/#StrictModes no/StrictModes yes/g' /etc/ssh/sshd_config
service sshd restart

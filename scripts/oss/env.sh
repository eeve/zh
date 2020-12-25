#!/bin/sh

apt install s3fs -y
echo "$1" >> $HOME/.passwd-s3fs
mkdir temp
s3fs temp temp -o url=$2 -o passwd_file=$HOME/passwd-s3fs
#!/bin/sh

echo "$1" > ./passwd-s3fs
chmod 600 ./passwd-s3fs
mkdir temp
chown -R runner:docker temp
s3fs temp temp -o url=$2 -o passwd_file=./passwd-s3fs
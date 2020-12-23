#!/bin/sh

wget https://github.com/ehang-io/nps/releases/download/v0.26.9/linux_amd64_client.tar.gz
tar -zxvf linux_amd64_client.tar.gz
chmod +x npc
rm -rf linux_amd64_client.tar.gz

nohup ./npc -server="$NP_SERVER" -vkey="$NP_SK" -type=tcp > npc.log 2>&1 &
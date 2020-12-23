#!/bin/sh

nohup ./npc -server="$NP_SERVER" -vkey="$NP_SK" -type=tcp > npc.log 2>&1 &
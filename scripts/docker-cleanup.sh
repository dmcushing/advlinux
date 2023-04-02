#!/bin/bash

source /scripts/functions.sh
clear

# Verify script is running as root
is_super_user

docker kill $(docker ps -q)  &2>/dev/null
docker rm $(docker ps -a -q)  &2>/dev/null
docker rmi $(docker images -q)  &2>/dev/null
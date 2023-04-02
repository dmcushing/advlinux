#!/bin/bash

source /scripts/functions.sh
clear

# Verify script is running as root
is_super_user

echo -e "Starting.."
docker kill $(docker ps -q) >/dev/null 2>&1
docker rm $(docker ps -a -q) >/dev/null 2>&1
docker rmi $(docker images -q) >/dev/null 2>&1
echo -e "..Complete"
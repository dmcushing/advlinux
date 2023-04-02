#!/bin/bash

source /scripts/functions.sh
clear

# Verify script is running as root
is_super_user

echo -e "Starting.."
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
echo -e "..Complete"
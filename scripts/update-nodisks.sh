#!/bin/bash

source /scripts/functions.sh

clear
is_super_user

echo -e "Beginning Update..."
git -C /advlinux/ config user.email "dave@davecushing.ca"
git -C /advlinux/ config user.name "Dave Cushing"
#
# Update everything and make scripts executable
#
echo -e "Updating scripts.."
git -C /advlinux/ stash
git -C /advlinux/ pull origin
chmod 777 /advlinux/scripts/*.sh

echo -e "Done Update."
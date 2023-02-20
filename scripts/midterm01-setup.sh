#!/bin/bash

source /scripts/functions.sh

# Script to Gather Student Work
# call with sudo -E /scripts/scriptname
# -E exports the user's environment variables (ie. ~)

clear

# Verify script is running as root
is_super_user

echo "Cleaning up.."
apt -y purge apache2 >/dev/null 2>&1
groupadd midterm >/dev/null 2>&1
mkdir ~/midterm >/dev/null 2>&1
chown linuxuser:linuxuser ~/midterm
chmod 755 ~/midterm
echo "Done."
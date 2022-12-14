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

#
# Clean up disks
#
echo -e "Cleaning up disks.."
echo -e "Unmounting and clearing LVM.."
umount -a >/dev/null 2>&1
vgremove -y $( vgdisplay --colon | cut -f1 -d: ) >/dev/null 2>&1
pvremove -y $( pvdisplay -C -o pvname --noheadings | cut -f1 ) >/dev/null 2>&1
echo -e "zap /dev/sdb"
sgdisk --zap-all /dev/sdb >/dev/null 2>&1
echo -e "zap /dev/sdc"
sgdisk --zap-all /dev/sdc >/dev/null 2>&1
echo -e "zap /dev/sdd"
sgdisk --zap-all /dev/sdd >/dev/null 2>&1
echo -e "zap /dev/sde"
sgdisk --zap-all /dev/sde >/dev/null 2>&1
echo -e "zap /dev/sdf"
sgdisk --zap-all /dev/sdf >/dev/null 2>&1
echo -e "zap /dev/sdg"
sgdisk --zap-all /dev/sdg >/dev/null 2>&1
echo -e "zap /dev/sdh"
sgdisk --zap-all /dev/sdh >/dev/null 2>&1
echo -e "zap /dev/sdi"
sgdisk --zap-all /dev/sdi >/dev/null 2>&1
rm -Rf /media/*
echo -e "Done Update."
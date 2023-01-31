#!/bin/bash

source /scripts/functions.sh

# Script to Gather Student Work
# call with sudo -E /scripts/scriptname
# -E exports the user's environment variables (ie. ~)

clear

# Verify script is running as root
is_super_user

# Gather student information
student_info sshlab2 user CET1034

echo -n "Enter SRV2 IP address: "
read srv2ipaddy

echo -e "Are the public and private keys there?" | tee -a $outfile
check_existence - /home/linuxuser/.ssh/id_rsa f
check_existence - /home/linuxuser/.ssh/id_rsa.pub f
blank_line
echo -e "Can sshlab2 log in using the key?" | tee -a $outfile
ssh sshlab2@$srv2ipaddy
if [ $? -eq 0 ]; then
	echo -e "ssh sslhlab2@$srv2ipaddy successful!" | tee -a $outfile
	exit
else
	echo -e "ssh sslhlab2@$srv2ipaddy NOT successful!" | tee -a $outfile
fi
# Mail information to instructor and student
mail_out sshlab2 user CET1034

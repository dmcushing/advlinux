#!/bin/bash

source /scripts/functions.sh

# Script to Gather Student Work
# call with sudo -E /scripts/scriptname
# -E exports the user's environment variables (ie. ~)

clear

# Verify script is running as root
is_super_user

# Gather student information
student_info IPAddr Quiz02 CET1034

echo -e "*****" | tee -a $outfile
echo -e "**      tree ~/quiz02/" | tee -a $outfile
echo -e "*****" | tee -a $outfile
tree ~/quiz02/ | tee -a $outfile
blank_line
echo -e "*****" | tee -a $outfile
echo -e "**      ~/quiz02/ipaddr.sh" | tee -a $outfile
echo -e "*****" | tee -a $outfile
nl -ba -nrz -w3 ~/quiz02/ipaddr.sh | tee -a $outfile

# Mail information to instructor and student
mail_out IPAddr Quiz02 CET1034

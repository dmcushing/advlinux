#!/bin/bash

source /scripts/functions.sh

# Script to Gather Student Work
# call with sudo -E /scripts/scriptname
# -E exports the user's environment variables (ie. ~)

clear

# Verify script is running as root
is_super_user

# Gather student information
student_info Filname2 Script CET1034

echo -e "*****" | tee -a $outfile
echo -e "**      tree ~/filename2/" | tee -a $outfile
echo -e "*****" | tee -a $outfile
tree ~/filename2 | tee -a $outfile
blank_line
echo -e "*****" | tee -a $outfile
echo -e "**      ~/filename2.sh" | tee -a $outfile
echo -e "*****" | tee -a $outfile
nl -ba -nrz -w3 ~/filename2.sh | tee -a $outfile

# Mail information to instructor and student
mail_out Filename2 Script CET1034

#!/bin/bash

source /scripts/functions.sh

# Script to Gather Student Work
# call with sudo -E /scripts/scriptname
# -E exports the user's environment variables (ie. ~)

clear

# Verify script is running as root
is_super_user

# Gather student information
student_info filedate.sh script CET1034

echo -e "**--- Check Directory and File" | tee -a $outfile
check_existence - ~/labdir d
tree ~/labdir 2>/dev/null | tee -a $outfile
blank_line
echo -e "**--- File Contents" | tee -a $outfile
cat ~/labdir/labfile* 2>/dev/null | tee -a $outfile
blank_line
echo -e "**--- Script File ~/filedate.sh" | tee -a $outfile
cat ~/filedate.sh 2>/dev/null | tee -a $outfile
blank_line

# Mail information to instructor and student
mail_out filedate.sh script CET1034

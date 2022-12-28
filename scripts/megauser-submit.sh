#!/bin/bash

source /scripts/functions.sh

# Script to Gather Student Work
# call with sudo -E /scripts/scriptname
# -E exports the user's environment variables (ie. ~)

clear

# Verify script is running as root
is_super_user

# Gather student information
student_info MegaUser Script

echo -e "--- megauser dir" | tee -a $outfile
tree ~/megauser | tee -a $outfile
echo -e "--- ~/megauser/megauser.sh" | tee -a $outfile
cat ~/megauser.sh | tee -a $outfile
blank_line
echo -e "--- ~/megauser/megauser.txt" | tee -a $outfile
cat ~/megauser.txt | tee -a $outfile

# Mail information to instructor and student
mail_out MegaUser Script

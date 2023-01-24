#!/bin/bash

source /scripts/functions.sh

# Script to Gather Student Work
# call with sudo -E /scripts/scriptname
# -E exports the user's environment variables (ie. ~)

clear

# Verify script is running as root
is_super_user

# Gather student information
student_info MegaCorp Quiz1 CET1034

echo -e "*****" | tee -a $outfile
echo -e "**      ~/megaquiz1/megawelcome.txt" | tee -a $outfile
echo -e "*****" | tee -a $outfile
nl -ba -nrz -w3 ~/megaquiz1/megawelcome.txt | tee -a $outfile
blank_line
echo -e "*****" | tee -a $outfile
echo -e "**      ~/megaquiz1/megawelcome.sh" | tee -a $outfile
echo -e "*****" | tee -a $outfile
nl -ba -nrz -w3 ~/megaquiz1/megawelcome.sh | tee -a $outfile

# Mail information to instructor and student
mail_out MegaCorp Quiz1 CET1034

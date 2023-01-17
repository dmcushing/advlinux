#!/bin/bash

source /scripts/functions.sh

# Script to Gather Student Work
# call with sudo -E /scripts/scriptname
# -E exports the user's environment variables (ie. ~)

clear

# Verify script is running as root
is_super_user

# Gather student information
student_info Info1 Info2 CLASS

# Redirect output you want in email OR call needed functions
echo -e "Output to be gathered" | tee -a $outfile
blank_line

# Mail information to instructor and student
mail_out Info1 Info2 CLASS

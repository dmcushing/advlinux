#!/bin/bash

#
#        Name: Your Name and Student Number
# Description: Create a new user 
#              sets fullname 
#              sets expiry date to creation date + 1 year
#              Creates home directory, and adds to megacorp group.
#              
#       Usage: megauser.sh <fullname> <username>


# Variables
FULLNAME=
USERNAME=
EXPIRY=

#
# Create the user using sudo useradd
# syntax:  
# sudo useradd -c "FULLNAME" -e EXPIRY -G megacorp -m -s /bin/bash USERNAME
#

#
# Echo output to verify user was created 
# syntax: 
# sudo chage -l USERNAME
#

#
# Echo output to verify user was created using grep
# grep USERNAME /etc/passwd
# grep megacorp /etc/group
#

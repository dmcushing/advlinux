#!/bin/bash

if [ $UID -ne 0 ]; then
        echo "Insufficient permissions. Run this script with sudo -E"
        exit
fi

ALLDONE="N"

while [[ $ALLDONE != [Yy] ]]; do
        # Get User input (filename to be processed)
        echo -n "      What is the input file name? "
        read INPUTFILENAME

        echo " "
        echo "   Data file: $INPUTFILENAME"
        echo " "

        # Ask if done. If no, loop through again
        echo -n " Everything Correct [y|N] "
        read ALLDONE
done

# Create the user and then create public_html and the .html file
while IFS=","  read USERNAME EMAIL; do

        userdel -rf $USERNAME

done < $INPUTFILENAME
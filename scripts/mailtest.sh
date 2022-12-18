#!/bin/bash

source /scripts/functions.sh
clear
is_super_user
alldone="n"
while [[ $alldone != [Yy] ]]
do
	clear
	echo -n "Enter INSTRUCTOR email address: "
	read inmailaddy
	echo -n "     Enter your student number: "
	read snumber
	echo -n "         Enter your first name: "
	read fname
	echo -n "          Enter your last name: "
	read lname
	echo -n "      Enter YOUR email address: "
	read mailaddy
	echo -e " "
	echo -e "Instructor: $inmailaddy"
	echo -e " "
	echo -e "  Your Name: $fname $lname"
	echo -e " Your Email: $mailaddy"
	echo -e " "
	echo -n "Correct? [y|n]? "
	read alldone
done

fname=`echo $fname | sed 's/ /_/g'`
lname=`echo $lname | sed 's/ /_/g'`
hname=`echo $lname-$fname`

mkdir -p /home/linuxuser/.info
chown linuxuser:linuxuser /home/linuxuser/.info

cat << EOF > ~/.info/.info
Name:$fname $lname
FName:$fname
LName:$lname
Email:$mailaddy
Student:$snumber
Instructor:$inmailaddy
EOF

echo "$( hostname ) is online! Congrats $fname." | mailx -s "Test Email from $( hostname )" -r $inmailaddy $mailaddy,$inmailaddy
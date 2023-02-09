#!/bin/bash

source /scripts/functions.sh
clear
is_super_user

if [ -f /done ]; then
	exit
else
	useradd -m -s /bin/bash linuxuser 
	chmod 660 /etc/sudoers 
	echo 'linuxuser ALL=(ALL:ALL) ALL' >> /etc/sudoers 
	chmod 440 /etc/sudoers 
	echo 'linuxuser:cetystudent' | chpasswd
	mkdir /home/linuxuser/.ssh 
	chown linuxuser:linuxuser /home/linuxuser/.ssh 
	chmod 700 /home/linuxuser/.ssh 
	cp /advlinux/linuxuserkey.txt /home/linuxuser/.ssh/authorized_keys 
	chmod 600 /home/linuxuser/.ssh/authorized_keys 
	chown linuxuser:linuxuser /home/linuxuser/.ssh/authorized_keys 
	echo 'export HISTTIMEFORMAT="%Y-%m-%d %T "' >> /home/linuxuser/.profile
	debconf-set-selections <<< 'postfix postfix/mailname string hostname.cety.online'
	debconf-set-selections <<< 'postfix postfix/main_mailer_type string ''Internet Site'''
	debconf-set-selections <<< 'postfix postfix/relayhost string [mail.cety.online]:2420'
	apt -y update 
	apt -y install tree net-tools postfix mailutils apache2
	echo 'smtp_sasl_auth_enable = yes' >> /etc/postfix/main.cf
	echo 'smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd' >> /etc/postfix/main.cf
	echo 'smtp_sasl_security_options = noanonymous' >> /etc/postfix/main.cf
	echo 'smtp_tls_security_level = may' >> /etc/postfix/main.cf
	echo 'header_size_limit = 409600' >> /etc/postfix/main.cf
	cp /advlinux/sasl_passwd.db /etc/postfix/
	sed -i -e "s/hostname.cety.online/$( hostname ).cety.online/g" /etc/postfix/main.cf
	chmod 600 /etc/postfix/sasl_passwd.db
	touch /done
fi
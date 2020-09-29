#!/bin/sh
userfile=/home/sysadmin/Homework/week4_linux_hardening/20200725_new_user_accounts.txt
username=$(cat /home/sysadmin/Homework/week4_linux_hardening/20200725_new_user_accounts.txt)
password=$username@246810
for user in $username
do
useradd $username
echo "$username:$password" | chpasswd
done
echo "$(wc -l /home/sysadmin/Homework/week4_linux_hardening/20200725_new_user_accounts.txt) users have been created."

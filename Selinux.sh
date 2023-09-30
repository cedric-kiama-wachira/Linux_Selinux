#!/bin/bash

# Get Selinux file and directory labels
ls -lZ 
-rw-r--r--. 1 ec2-user ec2-user unconfined_u:object_r:user_home_t:s0    0 Sep 26 15:51 100.sh
                                user         role     type        level

# To get SElinux process lables
ps -axZ
system_u:system_r:kernel_t:s0         2 ?        S      0:00 [kthreadd]
user      role    type     level

# To see the SELInux setting for our user
id -Z

# To see how the SELinux mapping to our user
sudo semanage login -l

# To see the roles a user can have on the system
sudo semanage user -l

# To see if SElinux is enabled 
getenforce

# Enforcing Mandatory Access Control using SELinux on ubuntu
sudo systemctl stop apparmor.service
sudo systemctl disable apparmor.service

# install the required software using below command
sudo apt install selinux-basics auditd

# Check the status of selinux
sestatus

# Check the lables and confirm that they are missing
ls -Z /

# Activate selinux
sudo selinux-activate

# Reboot the server
sudo reboot

# Check what SElinux has learned
sudo audit2why --all | less

# To enfore SElinux into enabled mode
sudo audit2allow -all -M Name_Of_Module

# To install the module as below
sudo semodule -i Name_Of_Module.pp

# To enforce it
sudo setenforce 1

# To make the enforcing permamnent
sudo vi /etc/selinux/config
SELINUX=enforcing


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
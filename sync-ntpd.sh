#!/bin/bash
set -e 
date
echo 'Start sync system time.'
sudo yum -y install ntp ntpdate
sudo systemctl stop ntpd.service
sudo ntpdate asia.pool.ntp.org
sudo hwclock -w
sudo systemctl start ntpd.service
echo 'Sync time done.'
date

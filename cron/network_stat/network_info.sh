#!/usr/bin/bash

mkdir stat;
mkdir fail;
( echo "`date` : "; uname -a;  free -h;fdisk -l; ) >> stat/"wifi_stat_$(date +%F)".txt;


( ping -c 1 www.google.com ) >> stat/"wifi_stat_$(date +%F)".txt;
# ( curl https://sharedapi.tasa.com.my/health ) >> stat/"wifi_stat_$(date +%F)".txt;
( echo; ) >> stat/"wifi_stat_$(date +%F)".txt;

if ping -c 1 www.google.com &> /dev/null
then
  echo "success"
else
  echo "error"
  ( echo "`date` : "; ) >> fail/"ping_fail_$(date +%F)".txt;
  ( ping -c 1 www.google.com; echo; ) >> fail/"ping_fail_$(date +%F)".txt;
fi

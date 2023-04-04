#!/usr/bin/bash

# echo $USER_PATH

DESKTOP_DIR="$HOME/Desktop"
PARENT_DIR="$DESKTOP_DIR/wifi_stat"
STAT_DIR="$DESKTOP_DIR/wifi_stat/stat"
ERROR_DIR="$DESKTOP_DIR/wifi_stat/error"

mkdir -p "$PARENT_DIR"
mkdir -p "$STAT_DIR"
mkdir -p "$ERROR_DIR"

while true
do
  ( echo "==========================================================";) >> "$STAT_DIR/$(date +%F)".txt;
  # ( echo "`date` : "; uname -a;  free -h;fdisk -l; ) >> stat/"$(date +%F)".txt;
  ( echo "`date` : ";) >> "$STAT_DIR/$(date +%F)".txt;


  ( ping -c 1 www.google.com ) >> "$STAT_DIR/$(date +%F)".txt;
  # ( echo; ) >> "$STAT_DIR/$(date +%F)".txt;

  if ping -c 1 www.google.com &> /dev/null
  then
    echo "success"
  else
    echo "error"
    ( echo "`date` : "; ) >> "$ERROR_DIR/ping_fail_$(date +%F)".txt;
    ( ping -c 1 www.google.com ) >> "$ERROR_DIR/ping_fail_$(date +%F)".txt;
  fi

  ( echo "==========================================================";) >> "$STAT_DIR/$(date +%F)".txt;
  ( echo;) >> "$STAT_DIR/$(date +%F)".txt;
  
  sleep 5
done

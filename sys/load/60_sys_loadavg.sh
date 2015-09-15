#!/bin/bash

# load average 1 min
handle1=$(cat /proc/loadavg | awk '{print $1}')
date=`date +%s`
host=$HOSTNAME

# load average 5 min
handle5=$(cat /proc/loadavg | awk '{print $2}')

# load average 15 min
handle15=$(cat /proc/loadavg | awk '{print $3}')

echo "[{\
  \"endpoint\"   : \"$host\",\
  \"tags\"       : \"\",\
  \"timestamp\"  : $date,\
  \"metric\"     : \"sys.loadavg.1min\",\
  \"value\"      : $handle1,\
  \"counterType\": \"GUAGE\",\
  \"step\"       : 60},\
  {\
  \"endpoint\"   : \"$host\",\
  \"tags\"       : \"\",\
  \"timestamp\"  : $date,\
  \"metric\"     : \"sys.loadavg.5min\",\
  \"value\"      : $handle5,\
  \"counterType\": \"GUAGE\",\
  \"step\"       : 60},\
  {\
  \"endpoint\"   : \"$host\",\
  \"tags\"       : \"\",\
  \"timestamp\"  : $date,\
  \"metric\"     : \"sys.loadavg.15min\",\
  \"value\"      : $handle15,\
  \"counterType\": \"GUAGE\",\
  \"step\"       : 60}]"


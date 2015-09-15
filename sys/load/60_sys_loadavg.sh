#!/bin/bash

# load average 1 min
handle=$(cat /proc/loadavg | awk '{print $1}')
date=`date +%s`
host=$HOSTNAME

echo "[{\
  \"endpoint\"   : \"$host\",\
  \"tags\"       : \"\",\
  \"timestamp\"  : $date,\
  \"metric\"     : \"sys.loadavg.1min\",\
  \"value\"      : $handle,\
  \"counterType\": \"GUAGE\",\
  \"step\"       : 60}]"

# load average 5 min
handle=$(cat /proc/loadavg | awk '{print $2}')
date=`date +%s`
host=$HOSTNAME

echo "[{\
  \"endpoint\"   : \"$host\",\
  \"tags\"       : \"\",\
  \"timestamp\"  : $date,\
  \"metric\"     : \"sys.loadavg.5min\",\
  \"value\"      : $handle,\
  \"counterType\": \"GUAGE\",\
  \"step\"       : 60}]"

# load average 15 min
handle=$(cat /proc/loadavg | awk '{print $3}')
date=`date +%s`
host=$HOSTNAME

echo "[{\
  \"endpoint\"   : \"$host\",\
  \"tags\"       : \"\",\
  \"timestamp\"  : $date,\
  \"metric\"     : \"sys.loadavg.15min\",\
  \"value\"      : $handle,\
  \"counterType\": \"GUAGE\",\
  \"step\"       : 60}]"


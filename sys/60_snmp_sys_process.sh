#!/bin/bash

handle=$(snmpget -v2c -c public -ObentUv -r 5 -t 1 localhost 1.3.6.1.2.1.25.1.6.0)
date=`date +%s`
host=$HOSTNAME

echo "[{\
  \"endpoint\"   : \"$host\",\
  \"tags\"       : \"\",\
  \"timestamp\"  : $date,\
  \"metric\"     : \"sys.process\",\
  \"value\"      : $handle,\
  \"counterType\": \"GUAGE\",\
  \"step\"       : 60}]"

#!/bin/bash
ip=`Ifconfig en0 | egrep 'inet\b' | awk '{print $2}'`
echo $ip

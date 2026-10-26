#!/bin/bash
echo "Starting system information check..."
echo "linux---server--information"

echo "hostname:"
hostname

echo " "
echo "date:"
date

echo " "
echo "disk usage:"
df -h

echo " "
echo "memory usage:"
top -l 1 | grep PhysMem

echo " " 
echo "system uptime"
uptime
 
 echo " system info completed"
 


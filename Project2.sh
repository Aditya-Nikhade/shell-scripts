#!/bin/bash

#monitoring free disk space

used_space=$(df -H | grep -E -v "Filesystem|tmpfs" | grep "sda3" | awk '{print $5}' | tr -d %)

if [ $used_space -ge 90 ]
then
echo "Very less free space available"
else
echo "Free space available: $((100-used_space))MB"
fi
#!bin/bash

THRESHOLD=3500
SPACE=$(free -mt | grep "Total" | awk '{print $4}')

if [ $SPACE -gt $THRESHOLD ]
then
    echo "We have enough space - $SPACEMB"
else  
    echo "There is no space"
fi
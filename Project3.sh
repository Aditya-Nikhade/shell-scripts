#!/bin/bash

BASE="/home/fypperson/Desktop/shellshell"
DEPTH=1
DAYS=10
RUN=0

#-----------------CHECK IF THE DIRECTORY IS PRESENT OR NOT-----------------#
if [ ! -d $BASE ]
then   
    echo "The directory does not exist: $BASE" 
    exit 1
fi

#-----------------CHECK IF THE ARCHIVE FOLDER EXISTS, IF NOT, THEN CREATE ONE-----------------#
if [ ! -d $BASE/archive ]
then 
    mkdir $BASE/archive
fi

#------------------Find the files whose size is more than 20MB------------------#
for i in `find $BASE -maxdepth $DEPTH -type f -size +3k`
do
    if [ $RUN -eq 0 ]
    then 
        echo "Currently archiving file: $i -----> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done
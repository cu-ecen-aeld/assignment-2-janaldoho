#!/bin/sh

FILESDIR=$1
SEARCHSTR=$2
num_argu=$#

if [ $num_argu -eq 2 ]
then
    FILESDIR=$1
    SEARCHSTR=$2
else
    echo "ERROR: Need 2 arguments!"
    exit 1
fi

if [ -d "$FILESDIR" ]
then
    # result=$(grep -r $SEARCHSTR $FILESDIR)
    X=$( find $FILESDIR -type f | wc -l)
    Y=$( grep -r $SEARCHSTR $FILESDIR | wc -l)
else
    echo "${FILESDIR} does not represent a directory on the filesystem"
    exit 1
fi

echo The number of files are $X and the number of matching lines are $Y
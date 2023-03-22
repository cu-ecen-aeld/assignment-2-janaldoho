#!/bin/sh

writefile=$1
writestr=$2
num_argu=$#

if [ $num_argu -eq 2 ]
then
    writefile=$1
    writestr=$2
else
    echo "ERROR: Need 2 arguments!"
    exit 1
fi

path=$(dirname $writefile)
mkdir -p $path
touch $writefile
echo $writestr > $writefile
#!/bin/bash
 
if [ $# -eq 0 ]
 
then
 
    echo "No arguments supplied"
 
    echo "usage: ./testconnect.sh url_to_test seconds_to_sleep output_file"
 
    exit 1
 
fi
 
echo $#
 
if [ $# -lt 3 ]
 
then
 
    echo "Invalid number of arguments supplied"
 
    echo "usage: ./testconnect.sh url_to_test seconds_to_sleep output_file"
 
    exit 1
 
fi
 
if [ -z "$1" ] && [ -z "$2" ] && [ -z "$3"]
 
then
 
    echo "No argument supplied"
 
    echo "usage: ./testconnect.sh url_to_test seconds_to_sleep output_file"
 
    exit 1
 
fi
 
if [ -f $3 ] ; then
 
    rm $3
 
fi
 
while true; do
 
            status=$(curl --ipv4  $1 >> $3  2>&1)
 
            echo $status
 
            sleep $2
 
done
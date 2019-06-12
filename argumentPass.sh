#!/bin/bash

#Check for arguments
if [ $# -eq 0 ] ; then
     echo "Usage: $0 argument"
     echo "$# arguments given"
     exit 1
fi

echo "The argument is: $1"
exit 0

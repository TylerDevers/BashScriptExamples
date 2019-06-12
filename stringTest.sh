#!/bin/bash

#Check that two arguments were passed
#Compact form of an if statement
[[ $# -ne 2 ]] && \
     echo "give two strings as an argument" && exit 1

# Functions
checkLength () {
     if [ ${#1} -eq 0 ] ; then # check length of passed variable
          echo length is equal to zero
     else
          echo length is not zero
     fi
}

# Get two arguments from the user
arg1=$1
arg2=$2

# Check arguments for length
echo First argument: ; checkLength $arg1
echo Second Argument: ; checkLength $arg2

# Check if arguments are equal
if [ $arg1 == $arg2 ] ; then 
     echo the two arguments are the same
else
     echo the two arguments are different
fi

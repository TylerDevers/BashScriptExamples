#!/bin/bash

# takes a word as an argument
# appends a random number to it
# Displays the answer

if [ $# -ne 1 ] ; then
     echo " must have one argument"
     exit 1
fi

arg1=$1

echo "$arg1-$RANDOM"
exit 0

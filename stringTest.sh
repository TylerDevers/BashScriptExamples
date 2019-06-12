#!/bin/bash

# Functions
checkLength () {
     if [ ${#1} -eq 0 ] ; then # check length of passed variable
          echo length is equal to zero
     else
          echo length is not zero
     fi
}

# Get two arguments from the user
echo Please enter the first argument: 
read arg1
echo Please enter the second argument:
read arg2

# Check arguments for length
echo First argument: ; checkLength $arg1
echo Second Argument: ; checkLength $arg2


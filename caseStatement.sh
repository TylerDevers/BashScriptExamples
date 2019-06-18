#!/bin/bash

#Example of a case statement

#Ensure script was passed an argument
[[ $# -ne 1 ]] && \
     echo "Error: You must pass a number 1 - 12" && exit 1

#Begin script
month=$1

case $month in
    1)		echo January ;;
    2)		echo February ;;
    3)		echo March ;;
    4)		echo April ;;
    5)		echo May ;;
    6)		echo June ;;
    7)		echo July ;;
    8)		echo August ;;
    9)		echo September ;;
    10)		echo October ;;
    11)		echo Novemeber ;;
    12)		echo Decemember ;;
    *)		echo "No month matches $month" && exit 2 ;; 
esac
exit 0

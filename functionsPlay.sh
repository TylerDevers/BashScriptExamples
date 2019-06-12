#!/bin/bash

#Functions defined
f1 () {
     echo "this is function 1"
}
f2 () {
     echo "this is function 2"
}
f3 () {
     echo "this is function 3"
}

#Main Script

#prompt reader for a number 1-3
echo "Please choose a number between 1 and 3:"
read num

#call the function using the users choice
f$num


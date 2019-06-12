#!/bin/bash

# Define functions - use all arithmetic expressions
add () {
     expr $1 + $2
}

subtract () {
      let result=( $1 - $2 ) ; echo $result
}

multiply () {
     echo $(($1 * $2))
}

divide () {
     echo $(expr $1 / $2)
}

error_message () {
     echo "ensure that the 3 arguments are given when calling script."
     echo "First argument: a,s,m,d"
     echo "Second argument: the first number in the equation"
     echo "Third argument: the second number in the equaion"
     echo " "
     exit 1
}

op=$1 ; num1=$2 ; num2=$3

# Check for 3 parameters
if [ $# -ne 3 ] ; then
     error_message  
elif [ $1 == 'a' ] ; then
     add $num1 $num2
elif [ $1 == 's' ] ; then
     subtract $num1 $num2
elif [ $1 == 'm' ] ; then 
     multiply $num1 $num2
elif [ $1 == 'd' ] ; then
     divide $num1 $num2
else
     echo argument is not the correct format
     error_message
fi


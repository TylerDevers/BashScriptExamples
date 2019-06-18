#!/bin/bash

# run and redirect file with $./errorRedirect.sh 2> error.log to save stdout

sum=0

for i in 1 2 3 4
do
     sum=$(( $sum+$i )) # Note the missing $ error
done

echo the sum of "$i" numbers is $sum
ls error

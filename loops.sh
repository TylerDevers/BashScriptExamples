#!/bin/bash

# for loop

sum=0
for x in 1 2 3 4 5 6
do
     sum=$(( $sum + $x ))
done
echo sum is $sum

# While loop
factorial=1 ; y=1  
while [ $y -le 4 ]
do
     factorial=$(( $factorial * $y ))
     y=$(( $y+1 ))
done 
echo factorial of 4 is $factorial


# Until loop
factorial2=1 ; x=1
until [ $x -gt 10 ]
do 
      factorial2=$(( $factorial2 * $x ))
      x=$(( $x+1 ))
done
echo factorial of 10 is $factorial2

exit 0

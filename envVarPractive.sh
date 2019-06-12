#!/bin/bash

#Get a number from the user
echo "Pick a number, 1 or 2..."
read num

if [ $num -eq 1 ] 
then
     export ANS="Yes"
else
     if [ $num -eq 2 ] 
     then
          export ANS="No"
     else
     # can only get here with a bad answer
          export ANS="Unknown"
          RC=1
     fi
fi

echo $ANS

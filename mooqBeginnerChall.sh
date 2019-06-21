#!/bin/bash

## Declare functions

randomData() {
     # get random characters from urandom
     # pipe this data through the translate command to keep only latin chars
     # pipe through head to limit characters to a count of 15
     echo $(cat /dev/urandom | tr -dc '0-9a-zA-Z' | head -c 15)
}

## Make output file and define file size for tracking purposes
# Test if output file exists, if it does, empty the file. If it does not, create the file
if [ -f mooq.out ] ; then 
     # empty mooq.out
     $( >mooq.out )
else
     # create mooq.out
     touch mooq.out
fi

## Add random latin characters to output file, lines are 15 character maximum 
# create a variable to access the output file
outputFile=mooq.out
# save the size of the output file in bytes
fileSize=$( wc -c <$outputFile)
# Stop appending to file when file reaches 1MB in size using a while loop
# I chose the while loop because it is human readable
while [ $fileSize -le 1000 ]
do 
     # append new line of random data to output file, then re-evaluate fileSize
     randomData >> mooq.out
     fileSize=$( wc -c <$outputFile) 
done

## File size limit has been reached, notify user
echo "file size has exceeded 1M: Beginning sort... "
echo "mooq size is:  $(wc -c < $outputFile)"

# sort the output file in dictionary order, since it is a common sort order
$( sort -d mooq.out -o sortedMooq.out )
cat sortedMooq.out && wc -l sortedMooq.out 

exit 0


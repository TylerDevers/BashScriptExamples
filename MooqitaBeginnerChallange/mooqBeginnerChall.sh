#!/bin/bash

## Instantiate needed files
touch mooq.out sortedMooq.out finalMooq.out

## Declare functions
randomData() {
     # get random characters from urandom
     # pipe this data through the translate command to keep only latin chars
     # pipe through head to limit characters to a count of 15
     echo $(cat /dev/urandom | tr -dc '0-9a-zA-Z' | head -c 15)
}

## Empty all files, ready them for new data 
$( >mooq.out >sortedMooq.out > finalMooq.out )

## Add random data to output file, lines are 15 character maximum 
# create a variable to access the output file
outputFile=mooq.out
# save the size of the output file in bytes
fileSize=$( wc -c <$outputFile)
# Stop appending to file when file reaches 1MB in size using a while loop
# I chose the while loop because it is human readable
while [ $fileSize -le 1000000 ]
do 
     # append new line of random data to output file, then re-evaluate fileSize
     randomData >> mooq.out
     fileSize=$( wc -c <$outputFile) 
done

## File size limit has been reached, notify user
echo "File size has exceeded 1M: Beginning sort... "

## sort the output file in dictionary order, save in a seperate file
$( sort -d mooq.out -o sortedMooq.out )
echo "File has been sorted. Removing all lines that begin with 'a' or 'A'..."

## delete all lines that start with 'a' or 'A', save output in finalMooq.out
# I have used sed since it is unix, and should always be available
# Find and save number of lines that start with [aA]
lineCount=$( grep "^[aA]" sortedMooq.out | wc -l )
sed '/^[aA]/d' sortedMooq.out > finalMooq.out
echo "Editing is complete, $lineCount lines removed. See finalMooq.out for complete data."

exit 0

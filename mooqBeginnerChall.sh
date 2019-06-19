#!/bin/bash

# Declare functions

randomData() {
     echo $(cat /dev/urandom | tr -dc '0-9a-zA-Z' | head -c 15)
}

# Make output file and define file size for tracking purposes
# Test if output file exists, if it does, empty it
if [ -f mooq.out ] ; then 
    $( >mooq.out )
else
     touch mooq.out
fi

# Add random latin characters to output file, lines are 15 character maximum 
file=mooq.out
fileSize=$( wc -c <$file )
while [ $fileSize -le 1000000 ]
do 
     randomData >> mooq.out
     fileSize=$( wc -c <$file ) 
     i=$(( $i+1 ))
done
echo "file size has exceeded 1M: aborting.... "
echo "mooq size is:  $(wc -c < $file )"
exit 0


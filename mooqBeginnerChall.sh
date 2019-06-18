#!/bin/bash

# Declare functions

randomData() {
     echo $(cat /dev/urandom | tr -dc '0-9a-zA-Z' | head -c 14)
}

# Make output file and define file size for tracking purposes
# Test if output file exists, if it does, empty it
if [ -f mooq.out ] ; then 
    $( >mooq.out )
else
     touch mooq.out
fi

# Add random latin characters to output file, lines are 15 character maximum 
i=0
while [ $i -le 15 ]
do 
     randomData >> mooq.out
     fileSize=$( ls -s mooq.out ) 
     i=$(( $i+1 ))
done
cat mooq.out
echo -e "mooq exists with a size of: $fileSize \n\n"
exit 0


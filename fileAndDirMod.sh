#!/bin/bash

echo "What would you like to name your new directory?"
read dirName

mkdir $dirName

cd $dirName
pwd
touch file1; touch file2; touch file3
echo "I am file 1" >> file1
echo "I am file 2" >> file2
echo "I am file 3" >> file3

cat file1; cat file2; cat file3
echo 
echo "good bye user"

cd ..
rm -rf $dirName

#!/bin/bash
# $? references most recent return value
echo Running ls on non existent file
ls /tmp/notThere
echo return value is $?
echo Running ls on real file 
ls /home/tyler
echo return value is $?


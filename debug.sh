#!/bin/bash

# To debug entire script, run $bash -x ./debug.sh
# Else, 'set -x' turns on debugging
# 'set +x' turn off debugging
# note that debug will send each line of code to stdout
set -x
echo Do you want to destroy your entire file system?
read response
set +x

case "$response" in

	"yes")			echo "I hope you know what you are doing";
				echo "I am supposed to type rm -rf /";
				echo "but won't let you commit suicide";;

	"no")			echo "you have some common sense! Aborting...";;

	"y" | "Y" | "YES")	echo "I hope you know what you are doing";
				echo "I am supposed to type rm -rf / ";
				echo "but I won't let you commint suicide";;
	* )			echo "you have to give an answer!";;
esac
exit 0

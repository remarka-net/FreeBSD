#!/bin/sh

if [ $# -ge 1 ]
then
	echo "You supplied $# command line arguments."
else
	echo "Usage: $0 file1 file2..."
	exit 1
fi
echo "Program exiting"

exit 0

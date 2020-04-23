#!/bin/sh

echo
while [ $# -ne 0 ]
do
	echo "The value of \$1 is now $1."
	shift
done
echo

exit 0

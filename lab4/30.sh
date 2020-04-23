#!/bin/sh

VarA=1
VarB=5

while [ $VarA -eq 1 ] || [ $VarB -gt 7 ]
do
	echo "VarA is equal to 1 and VarB greater than 7"
done

exit 0

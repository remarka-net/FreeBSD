#!/bin/sh

i=1
while [ $i -le 20 ]
do
	echo $i
	i=`expr $i + 1`
done
exit 0

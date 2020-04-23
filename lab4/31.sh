#!/bin/sh

for num in `jot 10 10 20`
do
	square_root=`echo "scale=5; sqrt($num)" | bc -l`
	echo $square_root
done

exit 0

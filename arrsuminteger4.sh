#!/bin/bash -x

a=(2 6 -8)
echo ${a[@]}
sum=0

for i in ${a[@]}
do
	sum=`expr $sum + $i`
done

echo $sum

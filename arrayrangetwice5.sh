#!/bin/bash -x

for ((i=0; i<100; i++))
do
	a[$i]=$i;
done
echo "array is:"${a[*]};

for ((i=1; i<${#a[*]}; i++))
do
	if (( $((a[i]%11)) == 0 ))
	then
		twina[$i]=$i;
	fi
done

echo "Twin Numbers In Array :"${twina[*]}

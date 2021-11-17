#!/bin/bash -x

a[0]=${RANDOM:0:3}
a[1]=${RANDOM:0:3}
a[2]=${RANDOM:0:3}
a[3]=${RANDOM:0:3}
a[4]=${RANDOM:0:3}
a[5]=${RANDOM:0:3}
a[6]=${RANDOM:0:3}
a[7]=${RANDOM:0:3}
a[8]=${RANDOM:0:3}
a[9]=${RANDOM:0:3}

array=${a[@]}
arayLength=${#a[@]}
n=$arayLength;

if((n<2))
then
        echo "Incoming Array Is Not Large"
        exit 1
fi

function largeNor() {
	for((i=0; i<n; ++i))
	do
		for((j=i; j<n; ++j))
		do
		if [ ${a[i]} -lt ${a[j]} ]; 
		then
			temp=${a[i]};
			a[$i]=${a[$j]};
			a[$j]=$temp;
		fi
		done
	done
}

largeNor
echo "Array In Sorted Order:" ${a[@]}
secondSmallest=${a[n-2]};
secondLargest=${a[n-9]};

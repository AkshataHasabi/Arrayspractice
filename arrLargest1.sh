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
arayLength=${#a[@]};
n=arayLength;

if((n<2));
then
	echo "$Incoming Array Is Not Large"
	exit 1
fi

largest=${a[0]}
secondLargest=0;
smallest=${a[0]}
secondSmallest=0;

function getLarge() {
	for((i=0; i<n; i++))
	do
		if ((${a[i]}>$largest));
		then
		secondLargest=$largest;
		largest=${a[i]};
		elif ((${a[i]} != $largest && ${a[i]} > $secondLargest));
		then
		secondLargest=${a[i]}
		fi
	done
}

function getSmall() {
	for((i=0; i<n; i++))
	do
        	if ((${a[i]}<$smallest));
        	then
                secondSmallest=$smallest;
                smallest=${a[i]};
        	elif ((${a[i]} != $smallest && ${a[i]} < $secondSmallest));
        	then
                secondSmallest=${a[i]}
        	fi
	done
}

function getLargeSmall() {
	if(($secondLargest == $largest && $secondSmallest == $smallest));
	then
        echo "$SecondSmallest number does not exit"
	else
        echo "secondLargest number is:"$secondLargest 
        echo "secondSmallest number is:"$secondSmallest
	fi
}
getLarge
getSmall
array=${a[@]}
getLargeSmall

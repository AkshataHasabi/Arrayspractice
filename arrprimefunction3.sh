#!/bin/bash -x

echo "enter number"
read num

function primeNr() {
        for ((i=2; i<=num/2; i++))
        do
	    if(($((num % i))==0));
	    then
		count=1
	    fi
	    i=`expr $i + 1 `
	done

	if(($count==1))
	then
		 echo "$num is not a prime  number"

	else
		 echo "$num is a prime  number"
	fi
}

function primeFactorize() {
        for((i=2; i<=num; i++))
        do
             while(($((num%$i))==0));
	     do
		 arr[$i]=$i;
		 echo $arr
	         num=$((num/$i));
	     done
        done


echo "The Prime Number Factorization is:" ${arr[@]}

}
primeNr
primeFactorize 






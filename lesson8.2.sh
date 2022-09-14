#!/bin/bash

gcd () # M N
{

#echo $M
#echo $N
R=1
divident=$M
divisor=$N

until [ "$R" -eq 0 ]; do
	let "R = $divident % $divisor"
	divident=$divisor
	divisor=$R
done
}

until [ "$M" != "" && "$N" != "" ]
do
	read -p "" M N

	if [[ "$M" == "" && "$N" == "" ]]; then
		echo "bye"
		break
	elif [[ "$M" == "$N" ]]; then
		echo "GCD is $M"
	elif [[ "$N" -lt "$M" ]]; then
		gcd M N
		echo "GCD is $divident"
	elif [[ "$N" -gt "$M" ]]; then
		gcd N M
		echo "GCD is $divident"
	fi
done

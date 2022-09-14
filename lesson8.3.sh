#!/bin/bash -vx

while [[ "$A" -eq "exit" || "$B" -eq "exit" || "$C" -eq "exit" ]]
do
	read -p "" A B C

	if [[ "$A" == "exit" || "$B" == "exit" || "$C" == "exit" ]]; then
		echo "bye"
		break
	elif [[ "$A" == "" || "$B" == "" || "$C" == "" ]]; then
		echo "error"
		break
	else
		echo $(($A $B $C))
		A=""
		B=""
		C=""
		continue
	fi
done

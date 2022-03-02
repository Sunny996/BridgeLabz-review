#!/bin/bash

read -p "Give the size of array" n; 
for (( i=0; i<n; i++ ))
do

	a=$(( RANDOM%900 + 100 ));
	arr[i]=$a;
done

echo "New unsorted array:";
echo ${arr[@]};

for (( p=0; p<n; p++ ))
do 
	for (( q=$p; q<n; q++ ))
	do
		if [ ${arr[$p]} -gt ${arr[$q]} ]
		then
			temp=${arr[$p]};
			arr[$p]=${arr[$q]};
			arr[$q]=$temp;
		fi
	done
done

echo "Sorted array:"
echo ${arr[@]};

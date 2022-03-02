	#!/bin/bash

read -p "Enter a value of nth fibonacci number" n;

f=0;
s=1;

for (( i=0; i<n;i++ ))
do

	echo $f;
	t=$(( f + s ));
	f=$s;
	s=$t;

done





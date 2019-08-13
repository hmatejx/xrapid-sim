#!/bin/bash

ii="1000 2000 5000 10000 20000 50000 100000 200000 500000 1000000"

echo -n `date --utc +%FT%TZ`
echo -n ', '

for i in $ii; do
	python3 xrapid-sim.py $i bitstamp USD bitso MXN -b
        if [ "$i" -ne "1000000" ]; then 
		echo -n ', '
	else
		echo
	fi
done


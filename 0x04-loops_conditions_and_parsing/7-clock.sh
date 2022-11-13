#!/usr/bin/env bash
#  Bash script that displays time for
#+ 12 hours and 59 minutes

hour=0
minute=1
echo "Hour:$hour"
while [ $hour -le 12 ]
do
    while [ $minute -le 59 ]

    do
	echo "$minute"

	#if [ $minute -eq 59 ]
	#then
	    #echo "Hour: $hour"
	#fi
	minute=$((minute +1))
    done
    hour=$((hour+1))
    echo "hour: $hour"
done

#! /bin/bash -x
#flip coin simulater

HEAD_count=0
TAIL_count=0
toss () {
	toss_val=$(($RANDOM%2))
        if [ $toss_val -eq 1 ]; then
                echo "heads"
                HEAD_count=$(($HEAD_count+1))
        else
                echo "tails"
                TAIL_count=$(($TAIL_count+1))
        fi
}

continue_toss () {
	while [ $(($HEAD_count-$TAIL_count)) -ne 2 ] && [ $(($HEAD_count-$TAIL_count)) -ne -2 ]
	do
		toss
	done
	show_result
}
show_result () {
	if [ $HEAD_count -gt $TAIL_count ];
	then
		echo "HEAD WON BY $(($HEAD_count-$TAIL_count)) Tosses"

	elif [ $TAIL_count -gt $HEAD_count ];
	then
        	echo "TAIL WON BY $(($TAIL_count-$HEAD_count)) Tosses"
	else
        	#if tied
        	continue_toss
	fi
}
while [ $HEAD_count -lt 21 ] && [ $TAIL_count -lt 21 ]
do
        toss
done

echo "you got $HEAD_count heads and $TAIL_count tails in flip"
show_result

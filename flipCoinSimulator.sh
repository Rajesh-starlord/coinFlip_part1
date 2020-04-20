#! /bin/bash -x
#flip teh coin through a loop

HEAD_count=0
TAIL_count=0
while [ $HEAD_count -lt 21 ] && [ $TAIL_count -lt 21 ]
do
        toss=$(($RANDOM%3))

        if [ $toss -eq 1 ]; then
                echo "heads"
                HEAD_count=$(($HEAD_count+1))
        else
                echo "tails"
                TAIL_count=$(($TAIL_count+1))
        fi
done

echo "you got $HEAD_count heads and $TAIL_count tails in flip"
if [ $HEAD_count -gt $TAILS_count ];
then
	echo "HEAD WON BY $(($HEAD_count-$TAIL_count)) Tosses"
elif [ $TAIL_count -gt $HEAD_count ];
then
	echo "TAIL WON BY $(($TAIL_count-$HEAD_count)) Tosses"
else
	echo "tied between head and tail"
fi

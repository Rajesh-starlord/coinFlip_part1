#! /bin/bash -x
#flip teh coin through a loop

HEAD=0
TAIL=0
while [ $HEAD -lt 11 ] && [ $TAIL -lt 11 ]
do
        toss=$(($RANDOM%3))

        if [ $toss -eq 1 ]; then
                echo "heads"
                HEAD=$(($HEAD+1))
        else
                echo "tails"
                TAIL=$(($TAIL+1))
        fi
done

echo "you got $HEAD heads and $TAIL tails in flip"


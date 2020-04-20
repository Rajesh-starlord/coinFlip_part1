#! /bin/bash -x
#coin flip simulator (display heads or tails as winner)

flip=$(($RANDOM%2))
if [ $flip -eq 1 ];
then
	echo "you got heads-winner"
else
        echo "you got tails-looser"
fi

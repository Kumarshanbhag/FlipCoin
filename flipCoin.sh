#!/bin/bash -x
echo "Welcome To Flip Coin"

if(($((RANDOM%2==0)) ))
then
	echo "Heads"
else
	echo "Tails"
fi

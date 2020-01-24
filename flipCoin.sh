#!/bin/bash 
echo "Welcome To Flip Coin"
declare -A coin
heads=0
tails=0

function FlipCoin() {
coinToss=$1
for((i=1; i<=$coinToss; i++))
do
	if(($((RANDOM%2==0)) ))
	then
		coin[Toss$i]="Heads"
		((heads++))
	else
		coin[Toss$i]="Tails"	
		((tails++))
	fi
done
}

function Percentage() {
	echo "Number of times Heads Appeared : $heads"
	echo "Percentage of Heads=$(($heads * 100 / $coinToss))"
	echo "Number of times Tails Appeared : $tails"
	echo "Percentage of Tails=$(($tails * 100 / $coinToss))"
}

read -p "Enter number of times a coin needs to be tossed : " coinToss
FlipCoin $coinToss
Percentage coin


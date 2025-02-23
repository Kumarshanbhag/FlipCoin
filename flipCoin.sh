#!/bin/bash -x
echo "Welcome To Flip Coin"
key=""

function FlipCoin() {
declare -A coin
for((i=1; i<=$1; i++))
do
	for((j=1; j<=$2; j++))
	do
		if(( $((RANDOM%2==0)) ))
		then
			key+=H
		else
			key+=T
		fi
	done
	coin[$key]=$((${coin[$key]}+1))
	echo "$key : ${coin[$key]} "
	key=""
done 
Percentage
}

function Percentage() {
for keys in ${!coin[@]}
do
	coin[$keys]=$(( ${coin[$keys]} * 100 / $flipCount ))%
	echo "Percentage of occurence of $keys : ${coin[$keys]} "
done 
Sort
}

function Sort() {
echo "Winning Occurence is "
for i in ${!coin[@]}
do
	echo "$i : ${coin[$i]}"
done | sort -k3 -nr | head -n 1
}

continue='Y'
while [[ $continue == "Y" || $continue == "y" ]]
do
	read -p "Enter number of times a coin needs to be tossed : " flipCount
	read -p "Number of Coins Flipped : " coinCount
	case $coinCount in
		1)
			FlipCoin $flipCount $coinCount
			read -p "Do you want to continue (Y/N) : " continue
		;;
		2)
			FlipCoin $flipCount $coinCount
			read -p "Do you want to continue (Y/N) : " continue
		;;
		3)
			FlipCoin $flipCount $coinCount
			read -p "Do you want to continue (Y/N) : " continue
		;;
		*)
			echo "Option Not Available"
			read -p "Do you want to continue (Y/N) : " continue
		;;
	esac
done

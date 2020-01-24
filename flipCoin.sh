#!/bin/bash 
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
	key=""
done
echo ${coin[@]} 
echo ${!coin[@]}
Percentage
}

function Percentage() {
for keys in ${!coin[@]}
do
	coin[$keys]=$(( ${coin[$keys]} * 100 / $flipCount ))
done
echo ${coin[@]} 
echo ${!coin[@]}
}

continue='Y'
while [[ $continue == "Y" || $continue == "y" ]]
do
	read -p "Enter number of times a coin needs to be tossed : " flipCount
	read -p "Number of Coins Flipped : " coinCount
	case $coinCount in
		1)
			FlipCoin $flipCount $coinCount
			read -p "Do you want to contine (Y/N) : " continue
		;;
		2)
			FlipCoin $flipCount $coinCount
			read -p "Do you want to contine (Y/N) : " continue
		;;
		*)
			echo "Option Not Available"
			read -p "Do you want to contine (Y/N) : " continue
		;;
	esac
done


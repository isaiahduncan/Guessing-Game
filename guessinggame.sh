#!/usr/bin/env bash
# File: guessinggame.sh


function congrats {
	echo "Good Job! You guessed the amount of files!"
}

guess=-1
count=$(ls | wc -l)

while [[ $guess -ne $count ]] 
do
	echo "How many files are in this directory?"
	
	read guess

	if [[ $guess -gt $count ]]
	then
		echo "Try guessing a little lower"
	elif [[ $guess -lt $count ]]
	then
		echo "Try guessing a little higher"
	else
		congrats
	fi
	

done


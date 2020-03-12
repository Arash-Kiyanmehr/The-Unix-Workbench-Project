#!/usr/bin/bash

function process_input {

	files=$(ls -la | wc -l)
	let files=$(echo "$files - 3" | bc -l)
	read -r -p "How many files in the current folder? " guess

	if [[ ! $guess =~ ^[0-9]+$ ]]
	then
		echo 3
	elif [[ $guess -eq $files ]]
	then
		echo 0
	elif [[	$guess -gt $files ]]
	then
		echo 1
	else
		echo 2
	fi
}

user_guess=$(process_input)
while [[ $user_guess -ne 0 ]]
do
	if [[ $user_guess -eq 1 ]]
	then
		echo "too high"
	elif [[ $user_guess -eq 2 ]]
	then
		echo "too low"
	elif [[ $user_guess -eq 3 ]]
	then
		echo "Not a correct number"
	fi
	echo "try again:"
	let user_guess=$(process_input)
done

echo "Congratulations!!"

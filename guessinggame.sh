#!/usr/bin/bash

function process_input {

	files=$(ls | wc -w)
	read guess
	if [[ $guess -eq $files ]]
	then
		echo 0
	elif [[	$guess -gt $files ]]
	then
		echo 1
	else
		echo 2
	fi
}

echo "How many files in current folder? "
user_guess=$(process_input)
while [[ $user_guess -ne 0 ]]
do
	if [[ $user_guess -eq 1 ]]
	then
		echo "too high"
	elif [[ $user_guess -eq 2 ]]
	then
		echo "too low"
	fi
	echo "try again:"
	let user_guess=$(process_input)
done

echo "Congratulations!!"

#!/bin/bash
# Assignment from "The Unix Workbench" course

function obt_data { 

	echo "How many files are in the current directory?"
	read num_files_user
}

function testing_user_guess {
	if [[ files_num -eq num_files_user ]]
	then
		echo "Correct, congratulations!!!"
	elif [[ files_num -lt num_files_user  ]]
	then
		echo "Too high!!!"

	else
		echo "Too low!!!"
	fi
}

let files_num=$(ls -la | wc -l)-1       #Saving the numbers of files in the directory.

echo "Welcome user"
obt_data
testing_user_guess

while [[ num_files_user -ne files_num ]]
do 
	obt_data
	testing_user_guess
done


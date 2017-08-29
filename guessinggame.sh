#!/bin/bash
# Assignment from "The Unix Workbench" course

echo "Welcome user"

function obt_data { 

	echo "How many files are in the current directory?"
	read num_files_user
}

let files_num=$(ls -l | wc -l)-1 	#Saving the numbers of files in the directory.

function testing_user_guess {
	if [[ files_num -eq num_files_user ]]
	then
		echo "Correct!!!"
	elif [[ files_num -lt num_files_user  ]]
	then
		echo "Too high!!!"

	else
		echo "Too low!!!"
	fi
}

obt_data
testing_user_guess



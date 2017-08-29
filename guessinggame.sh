#!/bin/bash
# Assignment from "The Unix Workbench" course

echo "Welcome user, How many files are in the current directory?"
read num_files_user

let files_num=$(ls -l | wc -l)-1 	#Saving the numbers of files in the directory.


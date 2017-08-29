README.md:
	touch README.md
	echo "# guessinggame" >> README.md
	echo "Date of creation of the file:" >> README.md
	date >> README.md
	echo "Number of lines of the guessinggame.sh script:" >> README.md
	wc -l guessinggame.sh | egrep -o [0-9]+ >> README.md	

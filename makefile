all: README

README: guessinggame.sh
	echo "# Title of Project: Guessing Game" > README.md
	echo "This README was written at:" >> README.md
	date  >> README.md
	wc -l guessinggame.sh >> README.md

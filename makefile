all: README.md

README.md: guessinggame.sh
	touch README.md
	"# Title of Project: Guessing Game" >> README.md
	now=$(date)
	"This README is generated at $now" >> README.md
	lines=$(wc -l guessinggame.sh)
	"guessinggame.sh contains $lines lines" >> README.md`

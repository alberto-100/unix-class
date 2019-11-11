all: readme.md

readme.md: guessinggame.sh
	echo "Guessing Game" > README.md
	currentdate: $(date)
	echo "Create: ${currentdate}" > README.md
	linecount=$(wc -l guessinggame.sh | egrep -o "[0-9]+")
	echo "Guessinggame.sh contains ${linecount} lines of code." > README.md

clean:
	rm README.md
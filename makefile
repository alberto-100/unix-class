all: readme.md

readme.md: guessinggame.sh
	echo "Guessing Game" > README.md
	echo "Created on:" >> README.md
	date >> README.md
	echo "Guessinggame.sh line count:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

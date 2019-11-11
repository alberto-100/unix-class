#!/usr/bin/env bash
# File: guessinggame.sh

correct=0
filesindirectory=$(ls -1 | wc -l)
echo "How many files are in the current directory?"
read guess

while [[ $correct -eq 0 ]]
do
    if [[ $guess -eq filesindirectory ]]
    then
        correct=1
    else
        echo "Incorrect guess, please try again."
        echo "How many files are in the current directory?"
        read guess
    fi
done

echo "Congratulations!"
echo "You managed to guess the number of files!"
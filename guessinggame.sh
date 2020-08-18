#!/usr/bin/env bash

echo "[Exercise The Unix Workbench]"

function compareNumber {
   if [[ $1 -lt $2 ]]
    then
        echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
        echo "Too high!"
    else
        echo ""
        echo "Congratualations! You guessed right!"
    fi
}

totFiles=$(ls -1 | wc -l)

while [[ $guess -ne $totFiles ]]
do
  read -p "Please enter the number of files in the current directory: " guess
  echo $(compareNumber $guess $totFiles)
  echo ""
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
#!/bin/bash

# Change the paths below to reflect where you store the script!
scriptPath="$HOME/Documents/interactive-cd/main.py"
resultPath="$HOME/Documents/interactive-cd/result.txt"

python $scriptPath

while IFS= read -r line; do
    cd "$line"
done < $resultPath

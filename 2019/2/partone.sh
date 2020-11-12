#!/bin/bash

FILE_PATH=$1

IFS=',' read -r -a array < "$FILE_PATH"

for i in "${array[@]}"
do
    echo value: $i
    if (( i == 1 ))
        then 
        echo in 1
    elif (( i == 2 ))
        then
        echo in 2
    elif (( i == 99 ))
        then
        echo end of program
        break
    else
        echo error value detected
    fi
    echo end of loop
done
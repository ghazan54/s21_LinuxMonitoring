#!/bin/bash

./input_validator.sh "$1"

if [ $? -eq 0 ]; then
    ./number_checker.sh "$1"
    if [ $? -eq 0 ]; then
        echo "Error: Incorrect input"
    else
         echo $1
    fi
else
    echo "Error: Incorrect input"
fi

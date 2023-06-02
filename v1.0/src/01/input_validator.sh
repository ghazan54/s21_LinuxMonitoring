#!/bin/bash

# Проверка наличия параметра
if [ -z "$1" ]; then
    echo "Error: Parameter not specified"
    exit 1
fi

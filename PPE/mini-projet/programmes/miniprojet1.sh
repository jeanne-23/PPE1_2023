#!/bin/bash

INFILE="/home/jeanne/PPE/mini-projet/urls/oeuf.txt"
while read -r line;
do
    echo ${line};
done < "$INFILE";

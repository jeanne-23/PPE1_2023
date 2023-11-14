Trial run 
1010
666666666




Miniprojet, exercices supplémentaires


test du code pour le 1er exercice de la fiche

#!/bin/bash

file=$1

if [ $# -ne 1 ]
then
    echo "Veuillez saisir un chemin d'un fichier'"
    exit
fi

egrep -o "\w+" "$file" | tr "[:upper:]" "[:lower:]" | tr -d " ?.,;:!)(][ "


rencontré un problème que je n’ai pas pu résoudre, les mots s’affichaient séparément mais la pnctuation était encore présente et chaque mot étaitent suivis pat “not found”

Le deuxième exercice m’as aussi posé probleme

#!/usr/bin/env bash

filename="$1"
nb_words="$2"

./candide2.sh "$filename" > mots_courants.txt


if [ -z "$filename" ]
then
    echo "Veuillez saisir le chemin d'un fichier et le nombre de mots"
else
    echo "Mots les plus courants : "
    cat ./mots_courants.txt | sort | uniq -c | sort -nr | head -n $nb_words
fi


L’ordinateur ne reconnaissait pas le fichiers .sh.

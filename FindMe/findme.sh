#!/bin/bash
path="/home"
findFile="findme.txt"


for dir in "${path[@]}"; do
    echo "Recherche dans le repertoir '$dir'"
    for file in $(find "$dir" -type f -name "$findFile"); do
      rm -v "$file"
    done
done

id [ $? -eq 0 ]; then
echo "Tout les fichiers '$findFile' on été supprimer"
else
echo "il n'y a pas de fichier '$findFile'"
fi

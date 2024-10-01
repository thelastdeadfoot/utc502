#!/bin/bash
path="/home"
findFile="findme.txt"

for file in $(find "$path" -type f -name "$findFile"); do
rm -v "$file"
done

id [ $? -eq 0 ]; then
echo "Tout les fichiers '$findFile' on été supprimer"
else
echo "il n'y a pas de fichier '$findFile'"
fi

#!/bin/bash
path=("/home" "/var" "/tmp")
findFile="findme.txt"

for dir in "${path[@]}"; do
    echo "Recherche dans le repertoire '$dir'"
    for file in $(find "$dir" -type f -name "$findFile"); do
      proprio=$(stat -c '%U' "$file")
      echo "Le propriétaire de ce fichier était '$proprio'"
      rm -v "$file"
    done
done

id [ $? -eq 0 ]; then
echo "Tout les fichiers '$findFile' on été supprimer"
else
echo "il n'y a pas de fichier '$findFile'"
fi

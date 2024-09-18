commande="ls -Sr *.txt"
executeCommande=$($commande 2>&1)
if [ $? -ne 0 ]; then
echo "Aucun fichier.txt trouvée"
else
echo "$executeCommande"
fi

commande="who --short"
executeCommande=$($commande 2>&1)
if [ $? -ne 0 ]; then 
    echo "Il y a une ou plusieurs erreurs dans les utilisateurs"
    echo "$executeCommande" >> error_users.log
else
    echo "Les utilisateurs actuellement en ligne on été répertoriées dans connected_users.log"
    echo "$executeCommande" >> connected_users.log
fi

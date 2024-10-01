# Création et teste du fichier "findme.sh"
Je suis aller dans "/bin" en utilisant la commande "cd /usr/local/bin"
J'ai crée le fichier findme.sh avec "nano findme.sh"
J'ai écrit le script findme.sh
J'ai tester mon findme.sh en ecrivant simplement "findme.sh" dans le terminal, cela m'a supprimer tout les fichier "findme.txt" se trouvant dans les repertoires de "/home"

# Création et teste du fichier "findme.service"
Ensuite je suis aller dans /systeme avec "cd /etc/systemd/system"
J'ai crée et ecrit dans le fichier "findme.service" en utilisant "nano findme.service"
Apres l'avoir écrit, j'ai fait un "sudo systemctl daemon-reload" pour que mon systeme prenne en considération mon nouveau service
Ensuite je l'ai activer avec "sudo systemctl enable findme.service"
Et je l'ai demarrer avec "sudo systemctl start findme.service"
en utilisant la commande "sudo journalctl -u findme.service -f", je vois bien qu'il supprime les fichiers "findme.txt" toute les minutes !


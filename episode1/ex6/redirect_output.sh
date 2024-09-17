output=$("$@" 2>&1)
if [ $? -ne 0 ]; then
    echo "Commande échouée, redirection vers error.log"
    echo "$output" >> error.log
else
    echo "Commande réussie, redirection vers output.log"
    echo "$output" >> output.log
fi

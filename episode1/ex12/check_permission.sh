commandeRead=$(test -r < "$1"; echo $?)
commandeWrite=$(test -w < "$1"; echo $?)
commandeExecute=$(test -x <" $1"; echo $?)
if [ $commandeRead -ne 1 ]; then
echo "Vous avez les droits de lecture"
else
echo "Vous n'avez pas les droits de lecture "
fi
if [ $commandeWrite -ne 1 ]; then
echo "Vous avez les droits d'écriture"
else
echo "Vous n'avez pas les droits de d'écriture "
fi
if [ $commandeExecute -ne 1 ]; then
echo "Vous avez les droits d'éxecution"
else
echo "Vous n'avez les pas de droit de d'éxecution "
fi

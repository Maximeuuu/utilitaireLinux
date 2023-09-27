#!/bin/bash

#permet de rendre executables tous les fichiers.sh d'un dossier

echo "Les fichiers suivant vont être rendus exécutables :"
listeSh=$(ls *.sh)

for fic in $listeSh; do
	echo $fic
done

echo -e "\nConfirmer ? [y]es - [n]o"
read yesno

if [ $yesno = "y" ]; then
	$(chmod u+x *.sh)
	echo "Commande terminée"
else
	echo "Commande annulée"
	exit 1
fi

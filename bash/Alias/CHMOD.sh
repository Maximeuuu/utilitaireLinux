#!/bin/bash

#permet de rendre executables tous les fichiers.sh d'un dossier

if [ $# -eq 1 ]; then
	rep="$#"
else
	rep="."
fi

listeSh=$(ls $rep | grep '.sh')

if [ -z "$listeSh" ]; then
	echo "Aucun fichier .sh trouvé."
	exit 1
fi

echo "Les fichiers suivant vont être rendus exécutables :"
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

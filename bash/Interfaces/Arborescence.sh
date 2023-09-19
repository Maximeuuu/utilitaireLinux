#!/bin/bash
#Script permettant de se balader dans la console
# paramètre 1 : ouverture d'un nouveau terminal
# paramètre 2 : emplacement par défaut

clear
echo -e "\033[7;37m""Explorateur de fichier\n""\033[0m"
echo -e "<entrer> pour sortir,\n .. pour revenir en arrière,\n ~ pour "$USER"\n"

if [ $# -le 1 ]; then
	cd .
else
	cd "$2"
fi

ls --color=auto
read action

while [ "$action" != "" ]; do

	clear
	
	# affiche le premier élément commencant par l'ensemble de lettres donné
	saisie=$(echo "$action"* | cut -d ' ' -f1 | head -n 1)
	#saisie=$(ls -a | grep "$action"* | cut -d ' ' -f1) #1ere version de la commande
	echo $saisie
	
	if test -d "$saisie"; then
		cd $saisie
	elif test -f "$saisie"; then
		cat $saisie | less -N --mouse
	else
		echo "Aucun élément trouvé"
	fi
 
	echo -e "\033[7;31mEmplacement : "$(pwd)
	echo -e "\033[0m"
	ls --color=auto
	read action
done

# ouvre dans un nouveau terminal si param1 égal à "true"
if [ "$1" == "true" ]; then
	mate-terminal
fi

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

#	if test "$action"* -d; then
#		cd "$action"*
#	elif test "$action"* -f; then
#		cat "$action"*
#	elif test *"$action"* -d; then
#		cd "$action"*
#	elif test *"$action"* -f; then
#		cat "$action"*
#	else
#		echo "Aucun répertoire trouvé"
#	fi
	
	cd "$action"*
	
	clear
	echo -e "\033[7;31mEmplacement : "$(pwd)
	echo -e "\033[0m"
	ls --color=auto
	read action
done

# ouvre dans un nouveau terminal si param1 égal à "true"
if [ "$1" == "true" ]; then
	mate-terminal
fi

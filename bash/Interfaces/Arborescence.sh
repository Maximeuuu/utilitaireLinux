#!/bin/bash
#Script permettant de se balader dans la console

# coder une partie permettant de mettre un paramètre facultatif du répertoire d'origine lors de l'appel

clear

echo -e "\033[7;37m""Explorateur de fichier\n""\033[0m"
echo -e "<entrer> pour sortir,\n .. pour revenir en arrière,\n ~ pour "$USER"\n"
cd ~

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

mate-terminal

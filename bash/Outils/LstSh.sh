#!/bin/bash

#afficher les commandes disponibles dans Debian

echo "Lister tout : [1], Rechercher par nom : [2]"

read action

if [ "$action" -eq "1" ]; then
	ls /bin | less
	
else
	echo "Lettre à rechercher : "
	read lettre
	ls /bin | less | find $lettre
fi

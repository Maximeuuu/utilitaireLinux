#!/bin/bash

#exécute gedit avec un ou plusieurs paramètres

if [ $# -eq 0 ]; then
	echo "nouvelle fenetre"
	gedit --new-window 2> /dev/null &
else
	echo "gedit personnalisé"
	gedit $* 2> /dev/null &
fi

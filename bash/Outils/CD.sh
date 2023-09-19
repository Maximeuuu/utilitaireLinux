#!/bin/bash

# se déplace dans le fichier donné et affiche son contenu
if [ "$#" -eq "1" ]; then
	cd $1
	ls --color=auto
fi

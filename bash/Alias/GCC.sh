#!/bin/bash

# Vérifie si un fichier C est passé en paramètre
if [ "$#" -eq "1" ]; then

	# Récupère le nom du fichier sans l'extension s'il en a une
	filename=$(basename -- "$1")
	extension="${filename##*.}"
	filename="${filename%.*}"

	# Compile le fichier
	if [ "$extension" == "c" ]; then
		gcc "$1" -o "$filename.out"
		if [ $? -eq 0 ] && [ -e "$filename.out" ]; then
			echo "Compilation réussie. Exécutable : $filename.out"
		else
			echo "Erreur de compilation."
		fi

	else
		echo "Extension de fichier incorrecte. Utilisez un fichier avec l'extension '.c'."
	fi

else
	echo "Usage: $0 fichier.c"
fi

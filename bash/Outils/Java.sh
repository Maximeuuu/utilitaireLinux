#!/bin/bash

#Ce script permet d'initialiser un code de base pour java
#Il prend comme paramètre (1) : le nom du fichier java
#Exemple : ./java.sh MonScript
#ATTENTION : peut supprimer un fichier de même nom !

#verification 1 argument donné
if [ $# -ne 1 ]; then
echo "usage $0 : 1 argument requis (nom du programme)"
exit 1
fi

#initialisation de variables
nom=$USER
jour=$(date +%x);
nomjava=$1
nomfic=$nomjava'.java'

#verification qu un fichier n est pas ecrasé
for i in *; do
	if [ "$nomfic" = "$i" ]; then
		echo "Un fichier existe déjà avec un nom similaire."
		exit 1
	fi
done

#creation du fichier .java
touch $nomfic

#contenu du fichier

contenu=""

contenu="$contenu""/*\n"
contenu="$contenu""* Commentaire : \n"
contenu="$contenu""* Auteur      : $nom\n"
contenu="$contenu""* Version     : 1 du $jour\n"
contenu="$contenu""*/\n"
contenu="$contenu""\n"
contenu="$contenu""public class $nomjava\n"
contenu="$contenu""{\n"
contenu="$contenu""\n"
contenu="$contenu""\tpublic static void main(String[] argv)\n"
contenu="$contenu""\t{\n"
contenu="$contenu""\t\t/*-------------------------------*/\n"
contenu="$contenu""\t\t/* DONNEES                       */\n"
contenu="$contenu""\t\t/*-------------------------------*/\n"
contenu="$contenu""\n"
contenu="$contenu""\t\t/*constantes*/\n"
contenu="$contenu""\t\tfinal int CONSTANTE = 0;\n"
contenu="$contenu""\n"
contenu="$contenu""\t\t/*variables*/\n"
contenu="$contenu""\t\tString sortie;\n"
contenu="$contenu""\n"
contenu="$contenu""\t\t/*-------------------------------*/\n"
contenu="$contenu""\t\t/* INSTRUCTIONS                  */\n"
contenu="$contenu""\t\t/*-------------------------------*/\n"
contenu="$contenu""\n"
contenu="$contenu""\t\tSystem.out.println(\"Sortie\");\n"
contenu="$contenu""\t}\n"
contenu="$contenu""}\n"

#edition du fichier
echo -e "$contenu" >> $nomfic



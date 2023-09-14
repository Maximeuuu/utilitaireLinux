#!/bin/bash

#Ce script permet d'initialiser un code de classe pour java
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

contenu="$contenu""\t/*ATTRIBUTS*/\n"
contenu="$contenu""\tprivate type x;\n"
contenu="$contenu""\tprivate type y;\n"
contenu="$contenu""\tprivate type nom;\n"
contenu="$contenu""\tprivate static final type CONSTANTE=valeur;\n"
contenu="$contenu""\n"

contenu="$contenu""\t/*CONSTRUCTEURS*/\n"
contenu="$contenu""\tpublic $nomjava()\n"
contenu="$contenu""\t{\n"
contenu="$contenu""\t\tthis( valeurX, veleurY );\n"
contenu="$contenu""\t}\n"
contenu="$contenu""\tpublic $nomjava(type x, type y)\n"
contenu="$contenu""\t{\n"
contenu="$contenu""\t\tthis.x = x;\n"
contenu="$contenu""\t\tthis.y = y;\n"
contenu="$contenu""\t\tthis.nom = valeur;\n"
contenu="$contenu""\t}\n"
contenu="$contenu""\n"

contenu="$contenu""\t/*ACCESSEURS*/\n"
contenu="$contenu""\tpublic type getAttribut()\n"
contenu="$contenu""\t{\n"
contenu="$contenu""\t\treturn this.attribut;\n"
contenu="$contenu""\t}\n"
contenu="$contenu""\n"

contenu="$contenu""\t/*MODIFICATEURS*/\n"
contenu="$contenu""\tpublic setAttribut( type valeur )\n"
contenu="$contenu""\t{\n"
contenu="$contenu""\t\tthis.attribut = valeur;\n"
contenu="$contenu""\t}\n"
contenu="$contenu""\n"

contenu="$contenu""\t/*Methodes*/\n"
contenu="$contenu""\tpublic type methode1( type param )\n"
contenu="$contenu""\t{\n"
contenu="$contenu""\t\treturn val;\n"
contenu="$contenu""\t}\n"
contenu="$contenu""\n"
contenu="$contenu""\tpublic void methode2( type param, type param)\n"
contenu="$contenu""\t{\n"
contenu="$contenu""\t}\n"
contenu="$contenu""}\n"

#edition du fichier
echo -e "$contenu" >> $nomfic



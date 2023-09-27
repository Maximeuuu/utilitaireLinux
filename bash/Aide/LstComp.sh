#!/bin/bash

# Affiche la liste des compilations

echo -e "\033[37;40mListe des commandes de compilation\033[0m
\033[37;40m* \033[0m java : javac Classes.java -d 'redirection'
\033[37;40m* \033[0m javadoc : javadoc listeFichiers -d documentation -private -author
\033[37;40m* \033[0m javaclasse : gcc fichier.c -o fichier.out
"

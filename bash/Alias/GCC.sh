#!/bin/bash

# Compile le fichier passe en parametre
if [ "$#" -eq "1" ]; then
	gcc "$1.c" -o "$1.out"
fi

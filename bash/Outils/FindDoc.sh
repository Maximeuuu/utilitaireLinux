#!/bin/bash

# Cherche le document passé en paramètre dans le répertoire utilisateur

echo "Chercher le nom : "
read doc

ls -R -d /  | grep $doc -i -s --color

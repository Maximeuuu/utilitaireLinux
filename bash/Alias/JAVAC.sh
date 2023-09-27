#!/bin/bash

#compile tous les fichiers.java

if [ $# -eq 1 ]; then
	rep="$1"
else
	rep="."
fi

lstJava=$(ls $rep | grep '.java')

if [ -z "$lstJava" ]; then
	echo "Aucun fichier .java trouvé."
	exit 1
fi

clear

for java in $lstJava; do
	echo "----- Compilation de $java -----"
	javac $java
done

echo 


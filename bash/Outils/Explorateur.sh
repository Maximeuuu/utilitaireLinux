#!/bin/bash

#ouvre l'explorateur de fichier

if [ $# -eq 0 ]; then
	caja . 2> /dev/null
else
	caja -t $* 2> /dev/null &
fi

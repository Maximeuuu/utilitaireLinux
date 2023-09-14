#!/bin/bash

function afficherHeure()
{
	echo -e '\033[1m'
	echo -e '\t'"+----*----*-DATE-*----*----+"
	echo -e '\033[0m''\033[35m'
	echo -e '\t'$(date "+%A %d %B %Y")
	echo -e '\t\t'$(date "+Il est %Hh%M.")
	echo -e '\033[0m''\033[1m'
	echo -e '\t'"+----*----*------*----*----+"
	echo -e '\033[0m'
}

function afficherRessources()
{
	cpt=1;
	for ligne in $(ls r* -d | cut -d '_' -f2-9); do
		echo -e "["'\033[5m'"$cpt"'\033[0m'"]\t: $ligne"
		((cpt++))
	done
}

function afficherSAE()
{
	ls s* -d | cut -d '_' -f2-9
}

function afficherSemestre()
{
	for ligne in $(ls s* -d); do
		echo -e "s["'\033[5m'${ligne:1}'\033[0m'"]"
	done
}

function main()
{
	#heure
	afficherHeure

	#semestre
	cd ~/TP
	afficherSemestre 
	read semestre
	clear

	#cours
	cd "s$semestre"
	afficherRessources
	read rep

	if test $rep -lt 10; then
		rep="r$semestre.0$rep"
	else
		rep="r$semestre.$rep"
	fi

	cd ~/TP/s"$semestre"/"$rep"*
	mate-terminal --title=corton --zoom=1.1 --maximize - geometry=80x24+200+200
}

main

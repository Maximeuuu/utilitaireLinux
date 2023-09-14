#!/bin/bash

#Script simple pour postgressql

cd ~/TP
echo "Choisir un semestre : "
echo "1 2 3 4 5 6"
read sem
cd s$sem/r$sem*bd*

echo "Choisir un dossier : "
ls
read dos1
cd $dos1

#ls
#echo "Choisir un tp ou td : "
#read dos2
#cd $dos2

psql -h woody -d $USER -U $USER

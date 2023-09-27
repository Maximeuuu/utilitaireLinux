#!/bin/bash

#cherche un document avec son extension

echo "Chercher l'extension : (ex : java)"
read extension

ls -R ~ | grep '.\.'$extension

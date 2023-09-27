# utilitaireLinux
Ensemble de petites commandes et paramètres utiles sur une distribution linux. 
L'ensemble des commandes sont adaptées à mon utilisation et à l'OS debian.

## Configuration du shell
fichier : ``.bashrc``
Modifie :
- classhpath
- alias
- redefinitions
- couleurs

## Dossier Bash

### Aide
fichiers :
* ``LstComp.sh`` : liste des cmd de compilations
* ``LstSh.sh`` : liste des cmd sh

### Interfaces
fichiers :
* ``Arborescence.sh`` : explorateur de fichier en cmd
* ``TP_AUTO.sh`` : déplacement dans les repertoires de cours

### Alias
* ``CD.sh`` : ajout d'une commande cd + ls
* ``CHMOD.sh`` : rend executable tous les fichiers du repertoire
* ``GCC.sh`` : compile en c
* ``GEDIT.sh`` : modification du comportement de "gedit"
* ``EXPLORATEUR.sh`` : ouverture de l'explorateur de fichier "caja"

### Outils
fichiers :
* ``FindDoc.sh`` : cherche des documents
* ``FindExt.sh`` : chercher des extensions
* ``Java.sh`` : initialiser un code de base pour java
* ``JavaClasse.sh`` : initialiser un code de classe pour java
* ``postgressql.sh`` : connection à psql

## Commandes
``chmod u+x Interfaces/*.sh Outils/*.sh``

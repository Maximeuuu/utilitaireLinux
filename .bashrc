# Environnement shell personnalisabled

# ------------------------------------------------------------------------------------------------ #

## JAVA
### IUT
export CLASSPATH=$CLASSPATH:$HOME/TP/java/paquetage_class
export REDIR_JAVA=$HOME/TP/java/paquetage_class

# ------------------------------------------------------------------------------------------------ #

## Repertoires
repScriptsBash="bash"

repAlias="$repScriptsBash/Alias"
repDebian="$repScriptsBash/Debian"
repInterfaces="$repScriptsBash/Interfaces"
repOutils="$repScriptsBash/Outils"

# ------------------------------------------------------------------------------------------------ #

## Commandes personnelles

### Alias
alias CD='. $repAlias/CD.sh'
alias CHMOD='$repAlias/CHMOD.sh'
alias explorateur='$repAlias/EXPLORATEUR.sh'
alias GCC='$repAlias/GCC.sh'

### Interfaces
alias naviguer='. $repInterfaces/Arborescence.sh'
alias TP='$repInterfaces/TP_AUTO.sh'

### Outils
alias enum='$repOutils/enumRep.sh'
alias findDoc='$repOutils/FindDoc.sh'
alias findExt='$repOutils/FindExt.sh'
alias javamain='$repOutils/Java.sh'
alias javaclasse='$repOutils/JavaClasse.sh'
alias lstSh='$repOutils/LstSh.sh'
alias mysql='$repOutils/Postgressql.sh'

### Autre
alias editenv='gedit ~/.bashrc'

# ------------------------------------------------------------------------------------------------ #

## commande d'aide

### Liste de toutes les commandes
alias helpenv='echo -e "\033[37;40mListe des commandes définies\033[0m
\033[37;40m* \033[0m helpenv : ?
\033[37;40m* \033[0m helpcomp : compilations
\033[37;40m* \033[0m javamain : template
\033[37;40m* \033[0m javaclasse : template
\033[37;40m* \033[0m mysql : login
\033[37;40m* \033[0m editclasspath : .bashrc
\033[37;40m* \033[0m explorateur : caja
\033[37;40m* \033[0m naviguer : explorateur cmd
\033[37;40m* \033[0m TP : scripts TP
\033[37;40m* \033[0m enum : creer x repertoires
\033[37;40m* \033[0m CD : cd + ls
\033[37;40m* \033[0m hyperactif / resetstyle : couleurs
"'

### Liste des commandes de compilation
alias helpcomp='echo -e "\033[37;40mListe des commandes de compilation\033[0m
\033[37;40m* \033[0m java : javac Classes.java -d "redirection"
\033[37;40m* \033[0m javadoc : javadoc listeFichiers -d documentation -private -author
\033[37;40m* \033[0m javaclasse : gcc fichier.c -o fichier.out
"'

# ------------------------------------------------------------------------------------------------ #

## Commandes windows
alias cls='clear'

# ------------------------------------------------------------------------------------------------ #

## Redefinition
alias gedit='$repOutilBash/Edit.sh'

# ------------------------------------------------------------------------------------------------ #

## Styles graphique
alias resetstyle='echo -e "\033[0m"'

PS1='\[\033[01;31m\]\u@\h:\w\[\033[00m\]\$'


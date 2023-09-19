# Environnement shell personnalisabled

# ------------------------------------------------------------------------------------------------ #

## JAVA
### IUT
export CLASSPATH=$CLASSPATH:$HOME/TP/java/paquetage_class
export REDIR_JAVA=$HOME/TP/java/paquetage_class

# ------------------------------------------------------------------------------------------------ #

## Repertoires
repScriptsBash="bash"
repOutilBash='$repScriptsBash/Outils'

# ------------------------------------------------------------------------------------------------ #

## Commandes personnelles
alias javamain='$repOutilBash/Java.sh'
alias javaclasse='$repOutilBash/JavaClasse.sh'
alias mysql='$repOutilBash/postgressql.sh'

alias editclasspath='gedit ~/.bashrc'

alias explorateur='$repOutilBash/Explorateur.sh'
alias naviguer='. $repScriptsBash/Interfaces/Arborescence.sh'

alias TP='$repScriptsBash/Interfaces/TP_AUTO.sh'

alias enum='$repScriptsBash/Outils/enumRep.sh'

alias CD='. $repScriptsBash/Outils/CD.sh'

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


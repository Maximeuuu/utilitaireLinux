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

#commande d'aide
alias helpenv='echo -e "\033[40m
        * helpenv : ?
        * javamain : template
        * javaclasse : template
        * mysql : login
        * editclasspath : .bashrc
        * explorateur : caja
        * naviguer : explorateur cmd
        * TP : scripts TP
        * resetstyle : couleurs
        \033[0m"'
#fin commande aide

# ------------------------------------------------------------------------------------------------ #

## Redefinition
alias gedit='$repOutilBash/Edit.sh'

# ------------------------------------------------------------------------------------------------ #

## Styles graphique
alias resetstyle='echo -e "\033[0m"'

PS1='\[\033[01;31m\]\u@\h:\w\[\033[00m\]\$'


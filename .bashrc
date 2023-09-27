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
repAide="$repScriptsBash/Aide"

# ------------------------------------------------------------------------------------------------ #

## Commandes personnelles

### Alias
alias CD='. $repAlias/CD.sh'
alias CHMOD='$repAlias/CHMOD.sh'
alias explorateur='$repAlias/EXPLORATEUR.sh'
alias GCC='$repAlias/GCC.sh'
alias JAVAC='$repAlias/JAVAC.sh'

### Interfaces
alias naviguer='. $repInterfaces/Arborescence.sh'
alias TP='$repInterfaces/TP_AUTO.sh'

### Outils
alias enum='$repOutils/enumRep.sh'
alias findDoc='$repOutils/FindDoc.sh'
alias findExt='$repOutils/FindExt.sh'
alias javamain='$repOutils/Java.sh'
alias javaclasse='$repOutils/JavaClasse.sh'
alias mysql='$repOutils/Postgressql.sh'

### Autre
alias editenv='gedit ~/.di_shrc_priv'

### Aide
alias helpenv='alias'
alias helpcomp='$repAide/LstComp.sh'
alias helpSh='$repAide/LstSh.sh'

# ------------------------------------------------------------------------------------------------ #

## Commandes windows
alias cls='clear'

# ------------------------------------------------------------------------------------------------ #

## Redefinition
alias gedit='$repAlias/GEDIT.sh'

# ------------------------------------------------------------------------------------------------ #

## Styles graphique
alias resetstyle='echo -e "\033[0m"'

PS1='\[\033[01;31m\]\u@\h:\w\[\033[00m\]\$'


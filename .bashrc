# ~/.bashrc: executed by bash(1) for interactive shells.
#
#    $Created: peter.steiner 2003/06/17 $
#  $Copyright: pesche $

# is macports installed?
if [ -f /opt/local/bin/port ]; then
    export PATH=$PATH:/opt/local/bin
    export MANPATH=$MANPATH:/opt/local/share/man
    export INFOPATH=$INFOPATH:/opt/local/share/info
fi

# a couple of aliases
alias l="ls -la"

# general environment
export EDITOR="emacsclient -a pico"
export ALTERNATE_EDITOR=pico

# environment for perforce
# don't set P4PASSWD here, it would give away the password
#export P4EDITOR="emacsclient -a pico"
#export P4USER=peter.steiner
#export P4PORT=depot.hugwi.ch:1666
#export P4CLIENT=machine-emme2

#export P4PORT=localhost:1670
#export P4CLIENT=ps-gravenstein
#export P4DIFF=/usr/local/bin/p4diff.sh
#export P4MERGE=/usr/local/bin/p4merge.sh

# prompt settings
export PS1="\u@\h[\l]:\w$ "

PATH=/usr/local/bin:$PATH
# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    export PATH=~/bin:$PATH
fi

# more path adjustments
if [ -d /usr/local/share/man ] ; then
    export MANPATH=$MANPATH:/usr/local/share/man
fi

# git paths
if [ -d /usr/local/git ] ; then
    export PATH=/usr/local/git/bin:$PATH
    export MANPATH=/usr/local/git/man:$MANPATH
fi

# Java stuff
if [ -f /usr/libexec/java_home ] ; then
    # Oracle Java on MacOSX
    export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
fi

if [ -d /usr/local/maven3/bin ] ; then
    export M2_HOME=/usr/local/maven3
    export M2=$M2_HOME/bin
    export PATH=$M2:$PATH
fi



# eof

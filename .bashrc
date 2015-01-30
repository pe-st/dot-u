# ~/.bashrc: executed by bash(1) for interactive shells.
#
#  $Copyright: pesche $
#    $Created: peter.steiner 2003-06-17 $
#        $URL: https://github.com/pe-st/dot-u $

# is macports installed?
if [ -f /opt/local/bin/port ]; then
    export PATH=$PATH:/opt/local/bin
    export MANPATH=$MANPATH:/opt/local/share/man
    export INFOPATH=$INFOPATH:/opt/local/share/info
fi

# a couple of aliases
alias l="ls -la"

# the presence of emacs is marked with the symlink ~/bin/emacsclient
if [ -f ~/bin/emacsclient ] ; then
    export EDITOR="emacsclient -a pico"
    export ALTERNATE_EDITOR=pico
fi

# environment for perforce
if [ -f /usr/local/bin/p4 ] ; then
    # don't set P4PASSWD here, it would give away the password
    export P4EDITOR="emacsclient -a pico"
    export P4USER=pesche
    export P4PORT=localhost:1666
    export P4CLIENT=gravenstein
fi

# prompt settings
# default cygwin bash prompt
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
#export PS1="\u@\h:\w$ "
# prompt including the terminal name
#export PS1="\u@\h[\l]:\w$ "


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

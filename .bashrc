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

# do the same with MANPATH
if [ -d ~/man ]; then
    export MANPATH=~/man:"${MANPATH}"
fi

# more manpath adjustments
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

# Settings for Java on Tandem
if [ -d /usr/tandem/nssjava/jdk150_h50 ] ; then
    export JAVA_HOME=/usr/tandem/nssjava/jdk150_h50
    export JREHOME=$JAVA_HOME/jre
    export PATH=$JAVA_HOME/bin:$PATH
fi

# HP NonStop OSS stuff
if [ -d /G/system ]; then
    # have a bigger and better terminal with Putty and the like on tandem
    #export TERM=xterm
    export TERM=xterm-256color
    export LINES=50
    export COLUMNS=132

    # some useful OSS aliases
    alias peruse="gtacl -p peruse"
    alias sqlci="gtacl -p sqlci"
    alias clspool="gtacl -c 'spoolcom job(owner), delete !'"
    alias pause="tail -1 -f ~/.profile"
    alias pa="tail -1 -f ~/.profile"

    # extract the short form of the user ID: the last 3 letters
    # of the login name, available e.g. from the HOME variable
    export ABBR3=${HOME:(-3)}

    # start visual inspect
    runv() { ksh -c "runv -name=/G/$ABBR3 $1"; }

    # run a program with a process name
    run() { ksh -c "run -name=/G/$1 $2"; }
fi

# use the coreutils available since J06.14
if [ -d /usr/coreutils/bin ] ; then
    export PATH=/usr/coreutils/bin:$PATH
fi

if [ -d /usr/coreutils/share/man ] ; then
    export MANPATH=/usr/coreutils/share/man:$MANPATH
fi

# private installation of ITUGLIB utilities
if [ -d ~/nse/usr/local/bin ] ; then
    export PATH=~/nse/usr/local/bin:$PATH
fi


# eof

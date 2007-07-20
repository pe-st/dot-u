# ~/.bashrc: executed by bash(1) for interactive shells.
#
#        $URL$
#   $Revision$
#       $Date$
#     $Author$
#    $Created: peter.steiner 2003/06/17 $
#  $Copyright: pesche $

# on MacOSX, use fink
if [ -f /sw/bin/init.sh ]; then
    source /sw/bin/init.sh
fi

# is darwinports installed?
if [ -f /opt/local/bin/port ]; then
    export PATH=$PATH:/opt/local/bin
    export MANPATH=$MANPATH:/opt/local/share/man
    export INFOPATH=$INFOPATH:/opt/local/share/info
fi

# # setup QT environment
# if [ -f /usr/local/qt/configure ]; then
#     QTDIR=/usr/local/qt
#     PATH=$QTDIR/bin:$PATH
#     MANPATH=$QTDIR/doc/man:$MANPATH
#     DYLD_LIBRARY_PATH=$QTDIR/lib:$DYLD_LIBRARY_PATH
#     export QTDIR PATH MANPATH DYLD_LIBRARY_PATH
# fi

# # this should be dependent on the platform...
# export TMAKEPATH=/usr/local/tmake-1.11/lib/macx-g++

# a couple of aliases
alias l="ls -la"

# # general environment
# export EDITOR="emacsclient -a pico"
# export ALTERNATE_EDITOR=pico

# prompt settings
export PS1="\u@\h:\w$ "
#export PS1="\u@\h[\l]:\w$ "

PATH=/usr/local/bin:$PATH

# Settings for Java on Tandem
if [ -d /usr/tandem/nssjava/jdk150_h50 ] ; then
    export JAVA_HOME=/usr/tandem/nssjava/jdk150_h50
    export JREHOME=$JAVA_HOME/jre
    export PATH=$JAVA_HOME/bin:$PATH
fi
if [ -d ~/ant ]; then
    export ANT_HOME=~/ant
    export PATH=$ANT_HOME/bin:$PATH
fi


# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    export PATH=~/bin:$PATH
fi

# do the same with MANPATH
if [ -d ~/man ]; then
    export MANPATH=~/man:"${MANPATH}"
fi

# more path adjustments
if [ -d /usr/local/share/man ] ; then
    export MANPATH=$MANPATH:/usr/local/share/man
fi

# private installation of ITUGLIB utilities
if [ -d ~/nse/usr/local/bin ] ; then
    export PATH=~/nse/usr/local/bin:$PATH
fi


# eof

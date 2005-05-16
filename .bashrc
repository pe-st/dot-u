# ~/.bashrc: executed by bash(1) for interactive shells.
#
#         $Id: //netzadmin/home/pesche/.bashrc#5 $
#     $Change: 21243 $
#   $DateTime: 2005/05/16 23:24:52 $
#     $Author: peter.steiner $
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

export PATH=~/bin:$PATH

# eof

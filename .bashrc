# ~/.bashrc: executed by bash(1) for interactive shells.
#
#         $Id: //netzadmin/home/pesche/.bashrc#4 $
#     $Change: 16908 $
#   $DateTime: 2003/06/21 17:30:35 $
#     $Author: peter.steiner $
#    $Created: peter.steiner 2003/06/17 $
#  $Copyright: pesche $

# on MacOSX, use fink
if [ -f /sw/bin/init.sh ]; then
    source /sw/bin/init.sh
fi

# a couple of aliases
alias l="ls -la"

# environment for perforce
# don't set P4PASSWD here, it would give away the password
export P4EDITOR=emacs
export P4USER=peter.steiner
export P4PORT=depot.hugwi.ch:1666
export P4CLIENT=machine-emme2

#export P4PORT=localhost:1670
#export P4CLIENT=ps-gravenstein
#export P4DIFF=/usr/local/bin/p4diff.sh
#export P4MERGE=/usr/local/bin/p4merge.sh

# prompt settings
export PS1="\u@\h[\l]:\w$ "

# eof

# ~/.bashrc: executed by bash(1) for interactive shells.
#
#         $Id: //netzadmin/home/pesche/.bashrc#2 $
#     $Change: 16888 $
#   $DateTime: 2003/06/17 16:56:33 $
#     $Author: peter.steiner $
#    $Created: peter.steiner 2003/06/17 $
#  $Copyright: pesche $

# a couple of aliases
alias l="ls -la"

# environment for perforce
# don't set P4PASSWD here, it would give away the password
export P4USER=peter.steiner
export P4PORT=depot.hugwi.ch:1666
export P4CLIENT=machine-emme2
export P4EDITOR=emacs

# eof
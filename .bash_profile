# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.
#
#         $Id: //netzadmin/home/pesche/.bash_profile#2 $
#     $Change: 16908 $
#   $DateTime: 2003/06/21 17:30:35 $
#     $Author: peter.steiner $
#    $Created: peter.steiner 2003/06/17 $

umask 022

# the rest of this file is commented out.

# include .bashrc if it exists

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
#if [ -d ~/bin ] ; then
#    PATH=~/bin:"${PATH}"
#fi

# do the same with MANPATH
#if [ -d ~/man ]; then
#    MANPATH=~/man:"${MANPATH}"
#fi

# eof

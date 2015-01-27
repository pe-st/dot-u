# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.
#
#    $Created: peter.steiner 2003/06/17 $

umask 022

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# eof

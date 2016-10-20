# ~/.profile: executed by ksh(1).
#
#  $Created: tksnp 2007-06-27 $

# since there is a nice support for ksh now, we don't use bash anymore (as default)
exec /usr/coreutils/bin/bash

# unfortunately the default is the batch defines, which is almost never what I want
export DEFINESARGS=foronline
#export WANTBASH=true
#. /fo/system/foprofile

# a couple of aliases
alias l="ls -laF"

PATH=~/bin:$PATH

# use the coreutils available since J06.14
PATH=/usr/coreutils/bin:$PATH
MANPATH=/usr/coreutils/share/man:$MANPATH

# have a bigger and better terminal with Putty and the like
export TERM=xterm
export LINES=50
export COLUMNS=132

# the following line is useful for the pause/pa alias (see .bashrc)
# eof; press Ctrl-C or Ctrl-Z to unpause

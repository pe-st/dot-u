# ~/.profile: executed by ksh(1).
#
#       $Id$
#      $URL$
#  $Created: tksnp 2007-06-27 $

# since there is a nice support for ksh now, we don't use bash anymore (as default)
# exec /usr/local/bin/bash
. /fo/system/foprofile

# unfortunately the default is the batch defines, which is almost never what I want
defines foronline

# a couple of aliases
alias l="ls -laF"

PATH=~/bin:$PATH


# the following line is useful for the pause/pa alias (see .bashrc)
# eof; press Ctrl-C or Ctrl-Z to unpause

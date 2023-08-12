# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.
#
#    $Created: peter.steiner 2003/06/17 $

# only temporary: This command will tell Bash to echo the commands it is
# executing so that you can find out which commands are slow and investigate
# more closely in that direction.
# see https://github.com/msysgit/msysgit/wiki/Diagnosing-why-Git-is-so-slow
# set -x

umask 022

# source the users bashrc if it exists
if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

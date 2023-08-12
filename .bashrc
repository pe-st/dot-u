# ~/.bashrc: executed by bash(1) for interactive shells.
#
#  $Copyright: pesche $
#    $Created: peter.steiner 2003-06-17 $
#        $URL: https://github.com/pe-st/dot-u $

## Content from oh-my-bash =====

# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/Users/pesche/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="powerline"

# Uncomment the following line to use case-sensitive completion.
# OMB_CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# OMB_HYPHEN_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you don't want the repository to be considered dirty
# if there are untracked files.
# SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"

# Uncomment the following line if you want to completely ignore the presence
# of untracked files in the repository.
# SCM_GIT_IGNORE_UNTRACKED="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
# HIST_STAMPS='yyyy-mm-dd'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
# OMB_DEFAULT_ALIASES="check"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

## End from oh-my-bash =====

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# setting up paths -----------------------------------------

# /usr/local stuff
PATH=/usr/local/bin:$PATH
if [ -d /usr/local/share/man ] ; then
    export MANPATH=$MANPATH:/usr/local/share/man
fi
if [ -d /usr/local/git ] ; then
    export PATH=/usr/local/git/bin:$PATH
    export MANPATH=/usr/local/git/man:$MANPATH
fi

# is macports installed?
if [ -f /opt/local/bin/port ]; then
    export PATH=$PATH:/opt/local/bin
    export MANPATH=$MANPATH:/opt/local/share/man
    export INFOPATH=$INFOPATH:/opt/local/share/info
fi

# use the NonStop coreutils available since J06.14
if [ -d /usr/coreutils/bin ] ; then
    export PATH=/usr/coreutils/bin:$PATH
fi
if [ -d /usr/coreutils/share/man ] ; then
    export MANPATH=/usr/coreutils/share/man:$MANPATH
fi

# set PATH/MANPATH so it includes user's private directories
if [ -d ~/bin ] ; then
    export PATH=~/bin:$PATH
fi
if [ -d ~/man ]; then
    export MANPATH=~/man:"${MANPATH}"
fi

# private installation of ITUGLIB utilities
if [ -d ~/nse/usr/local/bin ] ; then
    export PATH=~/nse/usr/local/bin:$PATH
fi

# Nitrous.IO package manager
if [ -d ~/.parts/autoparts/bin ] ; then
    export PATH="$HOME/.parts/autoparts/bin:$PATH"
    eval "$(parts env)"
fi

# aliases and variables ------------------------------------

# a couple of aliases (in addition to oh-my-bash)
if [[ "$OSTYPE" == "cygwin" ]]; then
    alias ls='ls --color=auto'
elif [[ "$OSTYPE" == "msys" ]]; then
    alias ls='ls --color=auto'
fi
if [[ "$OSTYPE" != "msys" ]]; then
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# the presence of emacs is marked with the symlink ~/bin/emacsclient
# e.g. ln -s /Applications/Emacs.app/Contents/MacOS/bin/emacsclient emacsclient
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

# export CLICOLOR=1
# # LSCOLORS is for Mac and FreeBSD; this is nice with a black blackground
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# if [[ "$OSTYPE" != "msys" ]]; then
#     # LS_COLORS is for GNU ls (e.g. Linux); this is nice with a black blackground
#     export LS_COLORS='rs=0:di=01;94:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.rpm=01;31:*.jar=01;31'
# else
#     # git msys has ls 4.1 which has problems with some of the prefixes above (and seems to not know the colors above 90)
#     export LS_COLORS='di=01;36:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.rpm=01;31:*.jar=01;31'
# fi

# locale settings; currently not all of these are supported with HP NonStop OSS
if [[ "$OSTYPE" != "nsk" ]]; then
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    export LANGUAGE=en_US.UTF-8
    export LC_CTYPE=UTF-8
fi

# some local variables
if hash git 2>/dev/null; then
    HAS_GIT=true
else
    HAS_GIT=false
fi

if [[ -n $HOSTNAME ]] ; then
    # the part of the hostname before the first dot, lowercase
    HOST_LOCAL_NAME="$(echo ${HOSTNAME%%.*} | tr '[:upper:]' '[:lower:]')"
else
    echo "unknownhost"
fi

# prompt settings ------------------------------------------

if [[ "$HOME" == "/home/mobaxterm" ]]; then
    # MobaXterm has a PROMPT_COMMAND that needs a prefix to PS1
    export PS1_PREFIX="\[\e]0;$PWD\007\]
"
else
    export PS1_PREFIX=""
fi

# Git stuff ------------------------------------------------
if [ "$HAS_GIT" = true ] ; then
    # as .gitconfig has no variable expansion, override the global email address
    git config --global user.email unistein+$HOST_LOCAL_NAME@gmail.com
    # also the global ignore file would wish to use variable expansion
    git config --global core.excludesfile ~/.gitignore_global
fi

# Java stuff -----------------------------------------------
if [ -f /usr/libexec/java_home ] ; then
    # Oracle Java on MacOSX
    export JAVA_HOME=`/usr/libexec/java_home -v 11`
fi

if [ -d /usr/local/maven3/bin ] ; then
    export M2_HOME=/usr/local/maven3
    export M2=$M2_HOME/bin
    export PATH=$M2:$PATH
fi

if [ -d /usr/local/ant/bin ] ; then
    export ANT_HOME=/usr/local/ant
    export PATH=$ANT_HOME/bin:$PATH
fi

# Settings for Java on Tandem
if [ -d /usr/tandem/nssjava/jdk150_h50 ] ; then
    export JAVA_HOME=/usr/tandem/nssjava/jdk150_h50
    export JREHOME=$JAVA_HOME/jre
    export PATH=$JAVA_HOME/bin:$PATH
fi

# HP NonStop OSS stuff -------------------------------------
if [ -d /G/system ]; then
    # Source some helper functions
    if [ -f /fo/system/oshlib ]; then
        . /fo/system/oshlib
    fi

    # have a bigger and better terminal with Putty and the like on tandem
    #export TERM=xterm
    export TERM=xterm-256color
    export LINES=50
    export COLUMNS=132

    # unfortunately the default is the batch defines, which is almost never what I want
    export DEFINESARGS=foronline

    # this lets secom automatically use bash instead of ksh
    export WANTBASH=true

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

# GNU screen -----------------------------------------------
if hash screen 2>/dev/null; then
    # show existing screen sessions (but not from within a screen session)
    if [[ -z "$STY" ]]; then
        screen -ls | grep -vi "no sockets found"
    fi
fi

# Homebrew -------------------------------------------------
# try local brew if not found globally
if ! command -v brew 1>/dev/null 2>&1; then
    if [ -e ~/homebrew/bin/brew ]; then
        eval "$(~/homebrew/bin/brew shellenv)"
    fi
fi

# Ruby stuff -----------------------------------------------
if [ -e /usr/local/bin/rbenv ]; then
    eval "$(rbenv init -)"
fi

# Python stuff ---------------------------------------------
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# eof

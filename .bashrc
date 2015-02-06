# exit if shell is non-interactive
[ -z "$PS1" ] && return

# enable XON/XOFF flow control
stty -ixon

function parse_git_dirty {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

# have ls and other programs use colored output
export CLICOLOR=1
export EDITOR='vim -f'

# basically \u@\h:\w(git-branch)\$ with colors:
# 1;32m : Green (too bright)
# 0m    : text reset
# 1;36m : Cyan (too bright)
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=UTF-8

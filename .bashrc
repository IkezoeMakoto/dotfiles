# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PS1='\[\033[32m\]\u@\H\[\033[00m\]:\[\033[35m\]\w\[\033[00m\]$(__git_ps1)\n$ '

# ctrl+s で出力がロックされてしまうのを防ぐ
stty stop undef

# alias
alias ls='ls -CF'
alias ll='ls -AlFh --show-control-chars --color=auto'
alias la='ls -CFal'
alias fig=docker-compose
alias sc=screen
alias scr='sc -R'
alias scl='sc -list'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ps='ps --sort=start_time'

# git-completion.bash / git-prompt.sh
#
if [ -f /usr/local/bin/git-completion.bash ]; then
    source /usr/local/bin/git-completion.bash
fi
if [ -f /usr/local/bin/git-prompt.sh ]; then
    source /usr/local/bin/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

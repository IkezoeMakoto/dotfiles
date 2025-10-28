# .bashrc
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8
# own bin and go bin
export GOPATH=$HOME
export PATH="$HOME/bin:$PATH:/usr/local/go/bin"
# mysql-client
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
# tfenv
export PATH="$HOME/src/github.com/tfutils/tfenv/bin:$PATH"
# python
export PYENV_ROOT="$HOME/.pyenv"
export PYTHONUSERBASE=~/
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# gnu-sed overwrite sed
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
# wasm
export PATH="/Users/ikezoe0309/.wasmer/globals/wapm_packages/.bin:$PATH"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ctrl+s で出力がロックされてしまうのを防ぐ
stty stop undef

# history にコマンド実行時刻を記録する
HISTTIMEFORMAT='[%Y-%m-%d %T] '

#########################################
# OSごとの設定
#########################################
case "${OSTYPE}" in
# mac
darwin*)
  eval "$(/opt/homebrew/bin/brew shellenv)"
  eval "$(anyenv init -)"
  # bash_completion for mac
  [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
  
  #########################################
  # alias
  #########################################
  alias ls='ls -CFG'
  alias ll='ls -AlFhG'
  alias la='ls -CFalG'
  ;;
# linux
linux*)
  # bash_completion for linux
  if [ -f /etc/profile.d/bash_completion.sh ]; then
      source /etc/profile.d/bash_completion.sh
  fi
  alias ls='ls -CF'
  alias ll='ls -AlFh --show-control-chars --color=auto'
  alias la='ls -CFal'
  ;;
esac
# 共通
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
#alias ps='ps --sort=start_time'
# git
alias g='git'
# docker
alias fig=docker-compose
# screen
export SCREENDIR=~/.screens
alias sc=screen
alias scx='sc -x'
alias scr='sc -R'
alias scs='sc -S'
alias scl='sc -list'
alias scw='sc -wipe'
# tmux
alias tm='tmux'
# xargs
alias xs='xargs'
# peco
alias pc='peco'
# repo
alias repo='cd $(ghq root)/$(ghq list | peco)'
alias sw='git branch | peco | xargs git switch'
alias rpsw='repo && sw'

#########################################
# PS1
#########################################
# git-completion.bash / git-prompt.sh
#
if [ -f ~/bin/git-completion.bash ]; then
    source ~/bin/git-completion.bash
fi
if [ -f ~/bin/git-prompt.sh ]; then
    source ~/bin/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# PS1 setting
#color mapping
unset -v _color_map
#_color_map=(${_color_map[*]} 0)   # black
_color_map=(${_color_map[*]} 1)   # red
_color_map=(${_color_map[*]} 2)   # green
_color_map=(${_color_map[*]} 3)   # yellow
_color_map=(${_color_map[*]} 4)   # blue
_color_map=(${_color_map[*]} 5)   # magenta
_color_map=(${_color_map[*]} 6)   # cyan
_color_map=(${_color_map[*]} 7)   # white

# Coloring hostname and username
_cl_host_index=$(/usr/bin/python3 -c 'print(hash("'$HOSTNAME'") % '${#_color_map[*]}')')
_cl_user_index=$(/usr/bin/python3 -c 'print(hash("'$USER'") % '${#_color_map[*]}')')

# color setting
_colored_host=$(echo -e "\e[03${_color_map[${_cl_host_index}]}m\H\e[m")
_colored_user=$(echo -e "\e[03${_color_map[${_cl_user_index}]}m\u\e[m")

# prompt setting
PS1="\[[\t] ${_colored_user}@${_colored_host}:\[\033[35m\]\w\[\033[00m\]\]"'$(__git_ps1)\n$ '

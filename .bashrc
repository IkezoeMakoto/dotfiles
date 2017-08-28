# .bashrc
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ctrl+s で出力がロックされてしまうのを防ぐ
stty stop undef

#########################################
# OSごとの設定
#########################################
case "${OSTYPE}" in
# mac
darwin*)
  # bash_completion for mac
  if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
  fi

  #########################################
  # alias
  #########################################
  alias ls='ls -CFG'
  alias ll='ls -AlFhG'
  alias la='ls -CFalG'
  ;;
# linux
linux*)
  alias ls='ls -CF'
  alias ll='ls -AlFh --show-control-chars --color=auto'
  alias la='ls -CFal'
  ;;
esac
# 共通
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ps='ps --sort=start_time'
# docker
alias fig=docker-compose
# screen
alias sc=screen
alias scx='sc -x'
alias scr='sc -R'
alias scl='sc -list'
# tmux
alias tm='tmux'

#########################################
# PS1
#########################################
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
_cl_host_index=$(/usr/bin/python -c 'print hash("'$HOSTNAME'") % '${#_color_map[*]}'')
_cl_user_index=$(/usr/bin/python -c 'print hash("'$USER'") % '${#_color_map[*]}'')

# color setting
_colored_host=$(echo -e "\e[03${_color_map[${_cl_host_index}]}m\H\e[m")
_colored_user=$(echo -e "\e[03${_color_map[${_cl_user_index}]}m\u\e[m")

# prompt setting
PS1="\[${_colored_user}@${_colored_host}:\[\033[35m\]\w\[\033[00m\]\]"'$(__git_ps1)\n$ '

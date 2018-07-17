#!/bin/bash

# デフォルトを指定しながら引数からパス取得
sshkey=${1:-~/.ssh/id_rsa}

# 存在確認してなければ鍵生成
if [ -e $sshkey ]; then
  echo "${sshkey} exists."
else
  echo ssh-keygen -t rsa -b 4096 -N "" -f $sshkey
fi

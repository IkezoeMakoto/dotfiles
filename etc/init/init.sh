#!/bin/bash
auth_file=~/.ssh/authorized_keys
ssh_dir=~/.ssh

if [ ! -e $ssh_dir ];
then
    mkdir $ssh_dir
    chmod 700 $ssh_dir
fi

if [ ! -e $auth_file ];
then
    touch $auth_file
    chmod 600 $auth_file
fi

# authorized_key に設定
curl -L https://github.com/ikezoeMakoto.keys > $auth_file

mkdir -p src/github.com/IkezoeMakoto/ && cd !$

# clone self
git clone git@github.com:IkezoeMakoto/dotfiles.git
cd dotfiles/
make deploy

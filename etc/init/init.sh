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
curl -L https://github.com/ikezoeMakoto.keys >> $auth_file


# git prompt 設定
wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
mv git-* /usr/local/bin/
cp ../../.bashrc ~/.bashrc
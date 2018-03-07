.PHONY: all clean

all: peco jq ghq git-completion.bash git-prompt.sh

clean:
	rm -rf peco jq ghq git-*

peco:
	wget https://github.com/peco/peco/releases/download/v0.2.9/peco_linux_amd64.tar.gz
	tar -xzf peco_linux_amd64.tar.gz
	mv peco_linux_amd64/peco .
	rm -rf peco_linux_amd64*
jq:
	wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
	chmod +x jq

ghq:
	wget -P tmp https://github.com/motemen/ghq/releases/download/v0.8.0/ghq_linux_amd64.zip
	cd tmp && unzip ghq_linux_amd64.zip
	cp tmp/ghq ./ && rm -rf tmp

git-completion.bash:
	wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash

git-prompt.sh:
	wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

PECO_V=v0.5.10
JQ_V=jq-1.7.1
GHQ_V=v1.3.0

.PHONY: all clean test

include detect.mk

all: peco jq ghq gg trdsql git-completion.bash git-prompt.sh

clean:
	rm -rf peco jq ghq git-* gg trdsql

include env/$(OS)_$(PROC).mk

test:
	@echo $(OS)_$(PROC)

git-completion.bash:
	wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash

git-prompt.sh:
	wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

PECO_V=v0.5.3
JQ_V=jq-1.5
GHQ_V=v0.8.0

.PHONY: all clean test

include detect.mk

all: peco jq ghq gg git-completion.bash git-prompt.sh

clean:
	rm -rf peco jq ghq git-*

include env/$(OS)_$(PROC).mk

test:
	@echo $(OS)_$(PROC)

git-completion.bash:
	wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash

git-prompt.sh:
	wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

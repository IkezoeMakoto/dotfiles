
peco:
	wget https://github.com/peco/peco/releases/download/$(PECO_V)/peco_linux_amd64.tar.gz
	tar -xzf peco_linux_amd64.tar.gz
	mv peco_linux_amd64/peco .
	rm -rf peco_linux_amd64*

jq:
	wget -O jq https://github.com/stedolan/jq/releases/download/$(JQ_V)/jq-linux64
	chmod +x jq

ghq:
	wget -P tmp https://github.com/motemen/ghq/releases/download/$(GHQ_V)/ghq_linux_amd64.zip
	cd tmp && unzip ghq_linux_amd64.zip
	cp tmp/ghq ./ && rm -rf tmp

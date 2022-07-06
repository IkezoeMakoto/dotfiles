peco:
	wget https://github.com/peco/peco/releases/download/$(PECO_V)/peco_darwin_arm64.zip
	tar -xzf peco_darwin_arm64.zip
	mv peco_darwin_arm64/peco .
	rm -rf peco_darwin_arm64*

jq:
	wget -O jq https://github.com/stedolan/jq/releases/download/$(JQ_V)/jq-osx-amd64
	chmod +x jq

ghq:
	wget -P tmp https://github.com/motemen/ghq/releases/download/$(GHQ_V)/ghq_darwin_arm64.zip
	cd tmp && unzip ghq_darwin_arm64.zip
	cp tmp/ghq_darwin_arm64/ghq ./ && rm -rf tmp/ghq*

gg:
	wget https://github.com/jesseduffield/lazygit/releases/download/v0.34/lazygit_0.34_Darwin_arm64.tar.gz
	tar -xzf lazygit_0.34_Darwin_arm64.tar.gz
	mv lazygit gg
	rm -rf lazygit_*

trdsql:
	wget -P tmp https://github.com/noborus/trdsql/releases/download/v0.10.0/trdsql_v0.10.0_darwin_arm64.zip
	cd tmp && unzip trdsql_v0.10.0_darwin_arm64.zip
	mv tmp/trdsql_v0.10.0_darwin_arm64/trdsql ./ && rm -rf tmp/trdsql*
	chmod +x trdsql

peco:
	wget https://github.com/peco/peco/releases/download/$(PECO_V)/peco_darwin_amd64.zip
	tar -xzf peco_darwin_amd64.zip
	mv peco_darwin_amd64/peco .
	rm -rf peco_darwin_amd64*

jq:
	wget -O jq https://github.com/stedolan/jq/releases/download/$(JQ_V)/jq-osx-amd64
	chmod +x jq

ghq:
	wget -P tmp https://github.com/motemen/ghq/releases/download/$(GHQ_V)/ghq_darwin_amd64.zip
	cd tmp && unzip ghq_darwin_amd64.zip
	cp tmp/ghq ./ && rm -rf tmp

gg:
	wget -O gg https://github.com/jesseduffield/lazygit/releases/download/v0.1.11/lazygit_darwin_amd64_v0.1.11
	chmod +x gg

trdsql:
	wget -P tmp https://github.com/noborus/trdsql/releases/download/v0.7.3/trdsql_v0.7.3_darwin_amd64.zip
	cd tmp && unzip trdsql_v0.7.3_darwin_amd64.zip
	mv tmp/trdsql_v0.7.3_darwin_amd64/trdsql ./ && rm -rf tmp
	chmod +x trdsql

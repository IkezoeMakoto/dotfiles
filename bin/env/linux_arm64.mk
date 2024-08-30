
peco:
	wget https://github.com/peco/peco/releases/download/$(PECO_V)/peco_linux_arm64.tar.gz
	tar -xzf peco_linux_arm64.tar.gz
	mv peco_linux_arm64/peco .
	rm -rf peco_linux_arm64*

jq:
	wget -O jq https://github.com/jqlang/jq/releases/download/$(JQ_V)/jq-linux-arm64
	chmod +x jq

ghq:
	wget -P tmp https://github.com/motemen/ghq/releases/download/$(GHQ_V)/ghq_linux_arm64.zip
	cd tmp && unzip ghq_linux_arm64.zip
	cp ghq_linux_arm64/ghq ./ && rm -rf tmp

gg:
	wget -O gg https://github.com/jesseduffield/lazygit/releases/download/v0.40.2/lazygit_0.40.2_Linux_arm64.tar.gz
	chmod +x gg

trdsql:
	wget -P tmp https://github.com/noborus/trdsql/releases/download/v0.20.0/trdsql_v0.20.0_linux_arm64.zip
	cd tmp && unzip trdsql_v0.20.0_linux_arm64.zip
	mv tmp/trdsql_v0.20.0_linux_arm64/trdsql ./ && rm -rf tmp
	chmod +x trdsql

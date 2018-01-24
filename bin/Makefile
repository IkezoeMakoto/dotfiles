.PHONY: all clean

all: peco jq

clean:
	rm -rf peco jq

peco:
	wget https://github.com/peco/peco/releases/download/v0.2.9/peco_linux_amd64.tar.gz
	tar -xzf peco_linux_amd64.tar.gz
	mv peco_linux_amd64/peco .
	rm -rf peco_linux_amd64*
jq:
	wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
	chmod +x jq

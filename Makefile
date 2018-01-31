DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules .travis.ym .gitignore
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := help

all:

ls:
	/bin/ls

list: ## Show dot files in this repo
	@$(foreach val, $(DOTFILES), ls $(val);)

deploy: ## Create symlink to home directory
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	$(MAKE) install

install:
	$(MAKE) -j -C bin

cron/set:
	crontab etc/cron/crontab
cron/get:
	crontab -l > etc/cron/crontab

clean: ## Remove the dot files and this repo
	@echo 'Remove dot files in your home directory...'
	@-$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)
	-rm -rf $(DOTPATH)

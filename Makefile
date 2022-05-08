DOTFILES_EXCLUDES	:= .git .gitignore .gitmodules . ..;
DOTFILES_CONFIG_FILES := $(wildcard .config/*)
DOTFILES_TARGET	:= $(wildcard .??*)
DOTFILES_DIR	:= $(DIR)
DOTFILES_FILES	:= $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

deploy:
	@$(foreach val, $(DOTFILES_FILES), echo $(val);)
	@$(foreach val, $(DOTFILES_CONFIG_FILES), echo $(val);)
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@$(foreach val, $(DOTFILES_CONFIG_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	@$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)



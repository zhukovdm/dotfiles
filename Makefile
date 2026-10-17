XDG_CONFIG_HOME := $(or $(XDG_CONFIG_HOME), $(HOME)/.config)
COPY_TO_CONFDIR := tmux uv zathura zed

.PHONY: install-all

install-all: install-tmux install-vim install-uv install-xfce4-terminal install-zathura install-zed

install-tmux:
	mkdir -p $(XDG_CONFIG_HOME)/tmux/ && cp -r $(CURDIR)/tmux/* $(XDG_CONFIG_HOME)/tmux/

install-vim:
	mkdir -p ~/.vim && rm -rf ~/.vim/ ~/.viminfo ~/.vimrc; \
	cp -r $(CURDIR)/vim/ ~/.vim/

install-uv:
	mkdir -p $(XDG_CONFIG_HOME)/uv/ && cp -r $(CURDIR)/uv/* $(XDG_CONFIG_HOME)/uv/

install-xfce4-terminal:
	mkdir -p ~/.local/share/xfce4/terminal/colorschemes && touch ~/.local/share/xfce4/terminal/colorschemes/Dracula.theme && touch ~/.local/share/xfce/terminal/colorschemes/Alabaster.theme; \
	cp -r $(CURDIR)/xfce4-terminal/dracula/Dracula.theme ~/.local/share/xfce4/terminal/colorschemes/Dracula.theme
	cp -r $(CURDIR)/xfce4-terminal/alabaster/Alabaster.theme ~/.local/share/xfce4/terminal/colorschemes/Alabaster.theme

install-zathura:
	mkdir -p "$(XDG_CONFIG_HOME)/zathura/" && cp -r "$(CURDIR)/zathura/." "$(XDG_CONFIG_HOME)/zathura/"

install-zed:
	mkdir -p "$(XDG_CONFIG_HOME)/zed/" && cp -r "$(CURDIR)/zed/." "$(XDG_CONFIG_HOME)/zed/"

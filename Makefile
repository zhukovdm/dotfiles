.PHONY: install

install: install-tmux install-vim install-xfce4-terminal install-zathura

install-tmux:
	mkdir -p ~/.config/tmux/ && rm -rf ~/.config/tmux/; \
	cp -r $(CURDIR)/.config/tmux/ ~/.config/tmux/

install-vim:
	mkdir -p ~/.vim && rm -rf ~/.vim/ ~/.viminfo ~/.vimrc; \
	cp -r $(CURDIR)/.vim/ ~/.vim/

install-xfce4-terminal:
	mkdir -p ~/.local/share/xfce4/terminal/colorschemes && touch ~/.local/share/xfce4/terminal/colorschemes/Dracula.theme; \
	cp -r $(CURDIR)/xfce4-terminal/dracula/Dracula.theme ~/.local/share/xfce4/terminal/colorschemes/Dracula.theme

install-zathura:
	mkdir -p ~/.config/zathura/ && rm -rf ~/.config/zathura/; \
	cp -r $(CURDIR)/.config/zathura/ ~/.config/zathura/

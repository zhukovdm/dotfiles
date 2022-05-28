DOT_SRC := $$PWD

CFG_DIR := .config
CFG_TRG := ~/$(CFG_DIR)
CFG_DIRS := i3 i3status zathura

VIM_DIR := .vim
VIM_TRG := ~/$(VIM_DIR)
VIM_FILES := ~/.vimrc ~/.viminfo

XFC_SRC := $(DOT_SRC)/xfce4-terminal/dracula
XFC_TRG := ~/.local/share/xfce4/terminal/colorschemes
XFC_THEME := Dracula.theme

.PHONY: install

install: install-config install-vim install-xfce4-terminal

install-config:
	mkdir -p $(CFG_TRG); \
	for dir in $(CFG_DIRS); \
	do \
		target=$(CFG_TRG)/$$dir; \
		if [ -d $$target ]; then rm -rf $$target; fi; \
		ln -sf $(DOT_SRC)/$(CFG_DIR)/$$dir $$target; \
	done

install-vim:
	rm -f $(VIM_FILES); \
	if [ -d $(VIM_TRG) ]; then rm -rf $(VIM_TRG); fi; \
	ln -sf $(DOT_SRC)/$(VIM_DIR) $(VIM_TRG)

install-xfce4-terminal:
	mkdir -p $(XFC_TRG); \
	target=$(XFC_TRG)/$(XFC_THEME); \
	if [ -d $$target ]; then rm -rf $$target; fi; \
	ln -sf $(XFC_SRC)/$(XFC_THEME) $$target

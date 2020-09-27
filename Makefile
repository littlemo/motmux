default: install

install:
	ln -s -f $(PWD)/motmux_conf ~/.tmux
	ln -s -f $(PWD)/oh-my-tmux-conf/.tmux.conf ~/.tmux.conf
	ln -s -f $(PWD)/motmux_conf/tmux.entry.conf ~/.tmux.conf.local
	@echo "\n安装结果:"
	@ls -alh ~ | grep tmux

uninstall:
	rm -rf ~/.tmux
	rm -rf ~/.tmux.conf
	rm -rf ~/.tmux.conf.local

.PHONY: install

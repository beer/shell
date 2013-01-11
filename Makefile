all:
	@echo "make linux for Linux version"
	@echo "make freebsd for FreeBSD version"
	@echo "make nmac for Mac version"
	@echo "if you install in a new machine. Plz make clean first."

linux:
	[ ! -f "~/.bashrc" ] && ln -s bashrc ~/.bashrc
	[ ! -f "~/.bashr_profile" ] && ln -s bashr_profile ~/.bashr_profile
	[ ! -f "~/.screenrc" ] && ln -s screenrc ~/.screenrc
	[ ! -f "~/.gitconfig" ] && ln -s gitconfig ~/.gitconfig
	[ ! -f "~/.vimrc" ] && ln -s vimrc ~/.vimrc
	[ ! -d "~/.vim" ] && ln -s vim ~/.vim
	@echo "Install $@ version compeletely !!!"

freebsd:
	[ ! -f "~/.bashrc" ] && ln -s bashrc ~/.bashrc
	[ ! -f "~/.bashr_profile" ] && ln -s bashr_profile ~/.bashr_profile
	[ ! -f "~/.screenrc" ] && ln -s screenrc ~/.screenrc
	[ ! -f "~/.gitconfig" ] && ln -s gitconfig ~/.gitconfig
	[ ! -f "~/.vimrc" ] && ln -s vimrc ~/.vimrc
	[ ! -d "~/.vim" ] && ln -s vim ~/.vim
	@echo "Install $@ version compeletely !!!"

clean:
	[ -f "~/.bashrc" ] && rm ~/.bashrc
	[ -f "~/.bash_profile" ] && rm ~/.bash_profile
	[ -f "~/.screenrc" ] && rm ~/.screenrc
	[ -f "~/.gitconfig" ] && rm ~/.gitconfig
	[ -f "~/.vimrc" ] && rm ~/.vimrc
	[ -d "~/.vim" ] && rm -rf ~/.vim
	@echo "Clean All Config file"
	fkdjsalfkjdlsaf

jfkdsfdsakfjldsakjflds

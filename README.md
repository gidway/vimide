# vimide
VIM is a IDE ;)

## ...prepare
```bash
$ mv ~/.vim* ~/backup/
```
## INSTALL
```bash
$ git clone https://github.com/gidway/vimide.git ~/.vim
$ cd ~/.vim/
$ git submodule init && git submodule update .
$ ln -s ~/.vim/configs/.vimrc ~/
$ sudo ln ~/.vim/scripts/make-* /usr/local/bin/
```
## NEEDED to work...

* PowerLine Fonts :: https://github.com/powerline/fonts
* ctags :: for example: http://ctags.sourceforge.net/
* NeoVIM :: https://neovim.io/ | as option

### NeoVIM config
```bash
$ ln -s ~/.vim ~/.config/nvim
```

## UPDATE
```bash
$ cd ~/.vim/ ; git pull --all && git submodule update .
```

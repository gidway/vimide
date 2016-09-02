# vimide
VIM is a IDE ;)


# screen-shots

#### C++ file - view
![C++ file](https://github.com/gidway/vimide/raw/master/images/Screenshot_2016-09-02_12-07-46.png)

#### C++ file with some error
VIMIDE show what and where

![C++ file with some error](https://github.com/gidway/vimide/raw/master/images/Screenshot_2016-09-02_12-08-12.png)

#### C++ file - view with extra panels
![alt tag](https://github.com/gidway/vimide/raw/master/images/Screenshot_2016-09-02_12-11-38.png)

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
### submodules
* bundle/gruvbox https://github.com/morhetz/gruvbox
* bundle/nerdtree https://github.com/scrooloose/nerdtree
* bundle/syntastic https://github.com/scrooloose/syntastic
* bundle/vim-airline https://github.com/vim-airline/vim-airline
* bundle/vim-airline-themes https://github.com/vim-airline/vim-airline-themes
* bundle/vim-fugitive https://github.com/tpope/vim-fugitive
* bundle/vim-gitgutter https://github.com/airblade/vim-gitgutter
* bundle/vim-project https://github.com/amiorin/vim-project
* bundle/vim-cmake https://github.com/vhdirk/vim-cmake.git

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
#!/bin/bash
cd ~/.vim/
git stash
git checkout master
git fetch
git pull --all
git submodule init
git submodule update .
git submodule sync
```
...or use update script ;)

# Versions...

## @ 0.0.2
### # Locally .vimrc
* first looking for **~/.local/.vimrc**
* if not found, looking for **~/.vimrc_local**

### # CTags
Auto-CTags and custom triggers, after loadded vim instance
### +commands:
* CTagsGenerateLocally
* CreateBashScript

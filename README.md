# VIM ctags Package

This repo contains a Vim v8+ package containing support for ctags; 
chiefly [universal ctags](https://github.com/universal-ctags/ctags), 
although [exuberant ctags](http://ctags.sourceforge.net/) may work 
just fine.

## Installation

This repo is intended to be installed as a
[VIM v8+ package](http://vimhelp.appspot.com/repeat.txt.html#packages).

For example, assume your vim files are in your home directory as `~/.vim`,
and you would like to install this package in the `~/.vim/pack/ctags`
directory.

First, ensure you have a package directory:

```bash
mkdir -p ~/.vim/pack
```

Next, install the package files into this directory by either directly 
cloning this repo or creating a [git submodule](https://git-scm.com/docs/git-submodule).

### Install package by directly cloning this repo

```bash
cd ~/.vim/pack
git clone https://github.com/rwhorman/vim-ctags.git ctags
```

### Install package as a git submodule

```bash
cd ~
git submodule add https://github.com/rwhorman/vim-ctags.git .vim/pack/ctags
```

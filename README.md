# etc

To manage configure files.

Suppose this repo is cloned to `$HOME/etc`.

## TOC

- [bash](#bash)
- [screen](#screen)
- [git](#git)
- [vim](#vim)
  - [vimrc](#vimrc)
  - [filetype](#filetype)
  - [colorscheme](#colorscheme)

## bash

In `$HOME/.bashrc`

```sh
source $HOME/etc/dotfiles/bashrc
```

In `$HOME/.bash_profile`

```sh
source $HOME/etc/dotfiles/bash_profile
```

## screen

In `$HOME/.screenrc`:

```sh
source $HOME/etc/dotfile/screenrc
```


## git

In `$HOME/.gitconfig`, set the `[include]` field:

```
[include]
    path = etc/dotfiles/gitconfig
```

## vim

### vimrc
In `$HOME/.vimrc`:

```sh
source $HOME/etc/dotfiles/vimrc
```

### filetype

```sh
ln -s $HOME/etc/vim/filetype.vim $HOME/.vim/filetype.vim
```

Right now, files with extension `.es6` are recognized as type `javascript`.

### colorscheme

Here is an example to use different colorschemes in multiple iterm2 windows:

In `dotfiles/vimrc` we already have:

```vim
set background=dark
if $VIMCOLORSCHEME != ''
    colorscheme $VIMCOLORSCHEME
endif
```

To use `solarized` by default, put the following line into `$HOME/.bashrc`:

```sh
export VIMCOLORSCHEME=solarized
```

If we want to use `default` for the HotKey Window,

open the HotKey Window profile general setting panel,

`Preferences->Profiles->Hotkey Window->General`

select `Login shell` in `Command` field,
and put the following text into the `Send text at start` input:

```sh
export VIMCOLORSCHEME=default
```


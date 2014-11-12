#!/bin/sh

USR_ETC_DIR=$( cd "$( dirname "$0" )" && pwd )
load_conf() {
    local srcPrefix=$1
    local targetPrefix=$2
    shift
    shift
    local option="add"
    while [[ $# -gt 0 ]]; do
        case $1 in
            -a)
                option="add"
                shift
                ;;
            -d)
                option="remove"
                shift
                ;;
            *)
                if [[ $option == "add" ]]; then
                    if [[ -e "$srcPrefix$1" && !(-e "$targetPrefix$1") ]]; then
                        ln -s "$srcPrefix$1" "$targetPrefix$1"
                    fi
                else
                    if [[ -e "$targetPrefix$1" ]]; then
                        rm "$targetPrefix$1"
                    fi
                fi
                shift
                ;;
        esac
    done
}
load_conf "$USR_ETC_DIR/" "$HOME/." \
    bashrc \
    vimrc \
    gitconfig \
    screenrc \
    bash_profile

load_conf "$USR_ETC_DIR/vim/bundle/" "$HOME/.vim/bundle/" \
    nerdtree \
    vim-autoclose \
    vim-markdown \
    vim-stylus \
    vim-javascript \
    ultisnips \
    html5.vim \
    scss-syntax.vim \
    emmet-vim \
    vim-surround \
    vim-snippets \
    END_OF_ADD

load_conf "$USR_ETC_DIR/vim/colors/" "$HOME/.vim/colors/" \
    solarized.vim \
    END_OF_ADD

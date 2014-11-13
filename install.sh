#!/bin/sh
USR_ETC_DIR=$( cd "$( dirname "$0" )" && pwd )

add_home_dot_conf() {
    if [[ -f "$HOME/.$1" ]]; then
        echo "$HOME/.$1 already exist."
    else
        if [[ -f "$USR_ETC_DIR/$1" ]]; then
            echo "creating $HOME/.$1 ... "
            echo "source $USR_ETC_DIR/$1" > "$HOME/.$1"
            echo "done."
        else
            echo "$USR_ETC_DIR/$1 does not exist."
        fi
    fi
}
add_home_dot_conf bashrc
add_home_dot_conf bash_profile
add_home_dot_conf gitconfig
add_home_dot_conf screenrc
add_home_dot_conf vimrc
add_home_dot_conf vimconfig

load_conf() {
    if [[ -f "$1" ]]; then
        echo "loading $1 ... "
        . "$1"
        echo "done."
    else
        echo "$1 does not exist."
    fi
}
load_conf $HOME/.vimconfig

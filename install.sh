#!/bin/sh
USR_ETC_DIR=$( cd "$( dirname "$0" )" && pwd )

add_home_dot_conf() {
    while [[ $# -gt 0 ]]; do
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
        shift
    done
}
add_home_dot_conf bashrc bash_profile gitconfig screenrc vimrc

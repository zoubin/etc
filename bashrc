# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

load_conf() {
    local conf_dir=~/etc/
    local conf="$conf_dir$1"
    if [[ -f "$conf" ]]; then
        . "$conf"
    fi
}

load_conf ps1.bash
load_conf alias.bash
load_conf git-completion.bash

source `brew --repository`/Library/Contributions/brew_bash_completion.sh

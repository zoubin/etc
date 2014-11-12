#!/bin/sh
# @link http://www.jonmaddox.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
function parse_git_current_branch {
    #git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' -e 's/((/(/' -e 's/))/)/'
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/\* \(.*\)/\'$'\n''*\1/' -e 's/((/(/' -e 's/))/)/'
}
function parse_git_branches {
    # won't work in mac os, there is a problem with paste usage
    # git branch --no-color 2> /dev/null | sed -e '/^\*/d' | paste -s

    git branch --no-color 2> /dev/null | sed -e '/^\*/d' | paste -d ' ' - - -
}

function proml() {
# refer to https://wiki.archlinux.org/index.php/Color_Bash_Prompt
    local RED="\[\033[0;31m\]"
    local GREEN="\[\033[0;32m\]"
    local PURPLE="\[\033[0;35m\]"
    local COLOR_END="\[\033[0m\]"
    local YELLOW="\[\033[0;33m\]"
    local CYAN="\[\033[0;36m\]"

    # http://en.wikipedia.org/wiki/List_of_emoticons
    local MARK_W="\342\234\227"
    local MARK_R="\342\234\223"
    local PREFIX="⌘"

    # https://bbs.archlinux.org/viewtopic.php?pid=1156660#p1156660
    PS1="\n\$(if [[ \$? == 0 ]]; then echo \"$GREEN$MARK_R\"; else echo \"$RED$MARK_W\"; fi) $YELLOW\u@$YELLOW\h$COLOR_END:$CYAN\w$COLOR_END$GREEN\$(parse_git_current_branch)$COLOR_END\$(parse_git_branches)\n$PURPLE$PREFIX$COLOR_END "
}
proml

# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export LC_CTYPE=zh_CN.UTF-8
export EDITOR=/usr/local/bin/vim
export PATH=$HOME/usr/bin:$PATH

umask 0002

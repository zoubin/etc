# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# 设置后，可以保证vim退出时不遗留内容
export TERM=xterm-256color

for file in `dirname "$BASH_SOURCE"`/{bash_prompt,aliases}; do
  [ -r "$file"  ] && [ -f "$file"  ] && source "$file";
done;


for file in `brew --prefix`/etc/bash_completion.d/{brew,git-completion.bash}; do
  [ -r "$file"  ] && [ -f "$file"  ] && source "$file";
done;

[ -f `brew --prefix`/etc/bash_completion ] && . `brew --prefix`/etc/bash_completion

unset file

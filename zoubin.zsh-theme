# 参考自plugin branch，速度比lib/git.zsh的要快
function git_branch_prompt_info() {
  # Start checking in current working directory
  local branch="" dir="$PWD"
  while [[ "$dir" != '/' ]]; do
    # Found .git directory
    if [[ -d "${dir}/.git" ]]; then
      branch="${"$(<"${dir}/.git/HEAD")"##*/}"
      echo "${ZSH_THEME_GIT_PROMPT_PREFIX}${branch:gs/%/%%}${ZSH_THEME_GIT_PROMPT_CLEAN}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
      return
    fi
    # Check parent directory
    dir="${dir:h}"
  done
}
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_branch_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


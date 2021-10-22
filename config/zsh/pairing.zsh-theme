prompt_git_name() {
  if $(git config --get duet.env.git-author-name >/dev/null 2>&1); then
    prompt_git_duet_name
  fi
}

prompt_git_duet_name() {
  local author_name=`git config --get duet.env.git-author-initials`
  local committer_name=`git config --get duet.env.git-committer-initials`
  local prompt=""

  [[ $author_name ]] && prompt="$author_name"
  [[ $committer_name ]] && prompt="$prompt+$committer_name"

  echo $prompt
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

precmd(){
  PROMPT="$(prompt_git_name) %(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜ )"
  PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
}

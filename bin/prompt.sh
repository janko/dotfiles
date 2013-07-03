source ~/bin/bash_colors.sh

parse_git_branch() {
  echo `/usr/bin/git rev-parse --abbrev-ref HEAD`
}

set_prompt() {
  local user="$GREEN\u$RESET"
  local path="\w"
  if [ -d .git ]; then
    local git_branch="$RED`parse_git_branch`$RESET, "
  fi
  local ruby_version="$YELLOW`rbenv version-name`$RESET"

  PS1="$user:$path[$git_branch$ruby_version]$ "
}

PROMPT_COMMAND='set_prompt'

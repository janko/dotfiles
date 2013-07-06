source ~/bin/bash_colors.sh

get_git_branch() {
  echo `/usr/bin/git rev-parse --abbrev-ref HEAD`
}

get_ruby_version() {
  echo `rbenv version-name`
}

set_prompt() {
  local user="$GREEN\u$RESET"
  local path="\w"
  if [[ -d .git ]]; then
    local git_branch="$RED`get_git_branch`$RESET, "
  fi
  local ruby_version="$YELLOW`get_ruby_version`$RESET"

  PS1="$user:$path[$git_branch$ruby_version]$ "
}

PROMPT_COMMAND="set_prompt; $PROMPT_COMMAND"

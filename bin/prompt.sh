source ~/bin/bash_colors.sh

get_git_branch() {
  echo `/usr/local/bin/git rev-parse --abbrev-ref HEAD 2>/dev/null`
}

get_ruby_version() {
  echo `rbenv version-name`
}

set_prompt() {
  local path="\W"
  if [[ -d .git ]]; then
    local git_branch="${RED}`get_git_branch`${RESET}, "
  fi
  local ruby_version="${YELLOW}`get_ruby_version`${RESET}"

  PS1="${path}[${git_branch}${ruby_version}]$ "
}

PROMPT_COMMAND="set_prompt; ${PROMPT_COMMAND}"

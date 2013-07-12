for file in ~/bin/*.sh; do
  source "$file"
done

export EDITOR="vim"
export GEM_EDITOR="vim" # for ~/bin/dive.sh

# Disable Ctrl-s, so I can use surround.vim
stty -ixon

# github.com/mislav/coral
eval "$(~/.coral/libexec/coral init -)"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# github.com/defunkt/hub
alias git="hub"

# github.com/sstephenson/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

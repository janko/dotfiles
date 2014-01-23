for file in ~/bin/*.sh; do
  source "$file"
done

export EDITOR="vim"

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

# Don't less output from ri
export RI="--no-pager"

# List files vertically
alias ls="ls -1"

export GOROOT="/usr/local/Cellar/go/1.2/libexec"

# github.com/zimbatm/direnv
eval "$(direnv hook $0)"

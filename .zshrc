# tmux prepends system executable paths, so we force homebrew one
export PATH="$(brew --prefix)/bin:$PATH"

fpath=($fpath "/Users/janko/.zfunctions")

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

# rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"

# zsh completion
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
autoload -Uz compinit
compinit

# cd quick access
setopt auto_cd
cdpath=($HOME/Code $HOME)

export PATH="$HOME/bin:$PATH"
export EDITOR="vim"
export PROMPT_EOL_MARK="" # remove percent sign on partial lines

# use emacs keybinding
bindkey -e

# fzf
export FZF_DEFAULT_COMMAND="rg --files -g '!node_modules/*'"

# broot
source /Users/janko/.config/broot/launcher/bash/br

# mcfly
eval "$(mcfly init zsh)"

export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

# https://stackoverflow.com/questions/52671926/rails-may-have-been-in-progress-in-another-thread-when-fork-was-called
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# jruby
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# https://github.com/starship/starship
eval "$(starship init zsh)"

export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

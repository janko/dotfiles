# Dotfiles

## Features:

- `git lg` alias for very pretty git logs (thanks to
  [Gary Bernhardt](https://github.com/garybernhardt)).

- Other useful git aliases.

- Pretty shell prompt. It displays

  - your ruby version (if you're using rbenv)
  - your current git branch (if you're in a Git project).

- A `dive` command, which "dives" into the code
  of a specified Ruby gem. It

  - respects the Gemfile (if present)
  - generates ctags

  (thanks to [Mislav Marohnić](https://github.com/mislav))

- A `test` executable, which you can integrate with your
  text editor. It

  - recognizes RSpec and Cucumber files
  - uses [Spring](https://github.com/jonleighton/spring)
    (in Rails projects)

  Checkout my [.vimrc](https://github.com/janko-m/vimfiles/blob/master/vimrc)
  to see how you can intergrate it with Vim.

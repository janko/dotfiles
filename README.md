# Dotfiles

## General

* Pretty shell prompt
  - displays current ruby version (if you're using rbenv)
  - displays current git branch (if you're in a Git project)
  - uses colors

* Colored `ls`

## Scripts

* `bin/dive` -- opens a Ruby gem in your `$EDITOR`
  - in Bundler projects acts like `bundle open`
  - otherwise acts like [`gem open`](https://github.com/tpope/gem-browse).
  - allows typing only first few letters of the gem name

* `bin/run` -- runs a lot of types of files (Ruby, Python, C, C++, Lex, Tex,
  Shell etc)

## Git

* Git/[Hub](https://github.com/github/hub) completion

* Useful Git aliases

  | Alias     | Command                                                                                  |
  | --------- | ---------------------------------------------------------------------------------------- |
  | `git lg`  | [pretty git log](https://www.destroyallsoftware.com/screencasts/catalog/pretty-git-logs) |
  | `git st`  | `git status -sb`                                                                         |
  | `git aa`  | `git add --all`                                                                          |
  | `git co`  | `git checkout`                                                                           |
  | `git r`   | `git lg -30` ("recent")                                                                  |
  | `git ci`  | `git commit`                                                                             |
  | `git rbc` | `git rebase --continue`                                                                  |
  | `git br`  | `git branch`                                                                             |
  | `git d`   | `git diff`                                                                               |

## Tmux

* `C-a` for prefix
* Pretty colored prompt
* `prefix + M` -- Opens `man` page in a split window
* `prefix + O` -- Opens a Ruby gem in a split window (using `bin/dive`)
* Lots of useful [tmux plugins](https://github.com/tmux-plugins) loaded with
  [tmux plugin manager](https://github.com/tmux-plugins/tpm)

## Vim

* Look for [yourself](/.vimrc) :smiley:

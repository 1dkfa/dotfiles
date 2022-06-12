# .zshenv is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search path, plus other important environment variables.
# .zshenv' should not contain commands that produce output or assume the shell is attached to a tty.

export DOTFILES="$HOME/dotfiles"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export SHELL=/bin/zsh

export PATH=$HOME/.cargo/bin:$PATH

fpath=(
  $DOTFILES/zsh/zsh-functions
  /opt/homebrew/completions/zsh/
  $fpath
)

typeset -aU path

export EDITOR='nvim'
export GIT_EDITOR='nvim'

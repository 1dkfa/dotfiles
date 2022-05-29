# .zprofile is sourced on login shells and before .zshrc.
# As a general rule, it should not change the shell environment at all.

if [[ -f /opt/homebrew/bin/brew ]]; then # macOS arm64
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export HOMEBREW_NO_ANALYTICS=1
elif [[ -f /usr/local/bin/brew ]]; then # macOS x86-64
  eval "$(/usr/local/bin/brew shellenv)"
  export HOMEBREW_NO_ANALYTICS=1
fi

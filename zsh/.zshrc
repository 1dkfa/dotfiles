export ZSH=$DOTFILES/zsh

# load zsh functions
if [[ -d $ZSH/zsh-functions ]]; then
  for func in $ZSH/zsh-functions/*(:t); autoload -U $func
fi

# define terminal type
if [ -z "$TMUX" ]; then
  export TERM=xterm-256color-italic
else
  export TERM=tmux-256color
fi

# define the code directory
if [[ -d ~/code ]]; then
  export CODE_DIR=~/code
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# initialize autocomplete
autoload -U compinit add-zsh-hook
compinit

# source plugins from $ZSH/plugins or git clone if plugin is not found
add_plugin "zsh-users/zsh-syntax-highlighting"
add_plugin "zsh-users/zsh-autosuggestions"

# source tty files
add_file "opts.zsh"
add_file "keymaps.zsh"
add_file "aliases.zsh"
add_file "utils.zsh"
add_file "prompt.zsh"

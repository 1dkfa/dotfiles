# completion
setopt NO_LIST_BEEP
setopt MENU_COMPLETE
setopt NOMATCH
setopt COMPLETE_ALIASES

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt EXTENDED_HISTORY       # write the history file in the ":start:elapsed;command" format
setopt HIST_REDUCE_BLANKS     # remove superfluous blanks before recording an entry
setopt SHARE_HISTORY          # share history between all sessions
setopt HIST_IGNORE_ALL_DUPS   # delete old recorded entry if new entry is a duplicate

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # matches case insensitive for lowercase
zstyle ':completion:*' insert-tab pending # pasting with tabs doesn't perform completion
zstyle ':completion:*' completer _expand _complete _files _correct _approximate # default to file completion

zmodload zsh/complist

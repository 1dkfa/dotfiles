bindkey '^[[Z' reverse-menu-complete                # [Shift-Tab] - go backwards in complete menu
bindkey '^?' backward-delete-char                   # [Backspace] - delete backward
if [[ "${terminfo[kdch1]}" != "" ]]; then
    bindkey "${terminfo[kdch1]}" delete-char        # [Delete] - delete forward
else
    bindkey "^[[3~" delete-char                     # [Delete] - delete forward
    bindkey "^[3;5~" delete-char
    bindkey "\e[3~" delete-char
fi
bindkey "^J" history-beginning-search-forward       # [Ctrl-j] - forward zsh history
bindkey "^K" history-beginning-search-backward      # [Ctrl-k] - backward zsh history

# movement
bindkey '^A' beginning-of-line                      # [Ctrl-a] - move to the beginning of the line
bindkey '^E' end-of-line                            # [Ctrl-e] - move to the end of the line
bindkey '^F' forward-word                           # [Ctrl-f] - move forward one word
bindkey '^B' backward-word                          # [Ctrl-b] - move backward one word

bindkey '^[[Z' reverse-menu-complete                # [Shift-Tab] - go backwards in complete menu

bindkey "^N" history-beginning-search-forward       # [Ctrl+n] - forward zsh history
bindkey "^J" history-beginning-search-forward       # [Ctrl-j] - forward zsh history
bindkey "^K" history-beginning-search-backward      # [Ctrl-k] - backward zsh history
bindkey "^P" history-beginning-search-backward      # [Ctrl-p] - backward zsh history

# modifying text
bindkey "^W" backward-kill-word                     # [Ctrl+w] - kill the line behind cursor
bindkey "^U" kill-whole-line                        # [Ctrl-u] - kill whole line
bindkey '^?' backward-delete-char                   # [Backspace] - delete backward
if [[ "${terminfo[kdch1]}" != "" ]]; then
    bindkey "${terminfo[kdch1]}" delete-char        # [Delete] - delete forward
else
    bindkey "^[[3~" delete-char                     # [Delete] - delete forward
    bindkey "^[3;5~" delete-char
    bindkey "\e[3~" delete-char
fi

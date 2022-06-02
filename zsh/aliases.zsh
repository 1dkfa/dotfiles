# filesystem
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

# helpers
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias df='df -h' # disk free, in GB
alias du='du -h -c' # calculate disk usage for a directory

if ls --color > /dev/null 2>&1; then # detect which flavor of `ls` is in use
    colorflag="--color" # GNU `ls`
else
    colorflag="-G" # macOS `ls`
fi
alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"

# homebrew
alias bsrch='brew search'
alias binfo='brew info'
alias binstl='brew install'
alias buinstl='brew uninstall'
alias brm='brew remove'
alias bupdt='brew update && brew outdated'
alias bupg='brew upgrade'
alias bls='brew list'
alias bs='brew services'
alias bssrt='brew services start'
alias bsrst='brew services restart'
alias bsst='brew services stop'

# python
alias py='python3'
alias py3='python3'

# neovim
[[ -n "$(command -v nvim)" ]] && alias vim="nvim"

# tmux
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'
alias tks='tmux kill-session -t'
alias trs='tmux rename-session -t'

# git
alias glg='git log --graph --abbrev-commit --decorate --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(auto)%d%C(reset)%n'\'''\''          %C(white)%s%C(reset)%n'\'''\''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)'\'''

# miscellaneous
alias reload!='RELOAD=1 source ~/.zshrc'
alias mvwp='mv ~/Downloads/*.png ~/iCloud/Pictures/wallpapers ; echo "All .PNG files from ~/Downloads moved to ~/iCloud/Pictures/wallpapers"'
alias caff='caffeinate -disu &; caff=$!; echo "caffeinate'\''s PID ($caff) has been declared to variable \$caff"'
alias tsm='transmission-remote'
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Git Aliases
alias gl='git log'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gf='git fetch'
alias gP='git push'
alias gp='git pull'
alias gm='git merge'
alias gr='git restore'
alias gR='git reset'

# Linux Aliases
alias ll='ls -la'
alias mk='function _mk(){ mkdir "$1" && cd "$1"; };_mk'

# TMUX Aliases
alias tl='tmux ls'
alias ta='tmux a'
alias tt='tmux a -t'
alias tn='tmux new -s'

# Docker Aliases
alias dockerclear='docker ps -qa | xargs docker rm -f'

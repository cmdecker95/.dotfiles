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
alias gg='lazygit'

# Linux Aliases
alias cat='bat'
alias cd='z'
alias ll='ls -la --color=auto'
alias ff='fzf'
alias mk='function _mk(){ mkdir "$1" && cd "$1"; };_mk'

# TMUX Aliases
alias tl='tmux ls'
alias ta='tmux a'
alias tt='tmux a -t'
alias tn='tmux new -s'

# Python Aliases
alias python='python3'
alias pip='pip3'

# Docker Aliases
alias dockerclear='docker ps -qa | xargs docker rm -f'

# Other
alias bd='bun dev --open'
alias ntl='netlify'

# Bun
[ -s "/Users/christian/.bun/_bun" ] && source "/Users/christian/.bun/_bun"
[ -s "/Users/christiandecker/.bun/_bun" ] && source "/Users/christiandecker/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

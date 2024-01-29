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
alias cat='bat'
alias ls='exa'
alias ll='exa -la'
alias ff='fzf'

# Python Aliases
alias python='python3'
alias pip='pip3'

# Docker Aliases
alias undock='docker ps -qa | xargs docker rm -f'

# Neovim Aliases
alias nv='nvim .'
alias nvcd='cd ~/.config/nvim/'
alias nvrm='rm -rf ~/.config/nvim/ ~/.local/share/nvim/ ~/.local/state/nvim/'

# Bun
[ -s "/Users/christian/.bun/_bun" ] && source "/Users/christian/.bun/_bun"
[ -s "/Users/christiandecker/.bun/_bun" ] && source "/Users/christiandecker/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Starship
eval "$(starship init zsh)"

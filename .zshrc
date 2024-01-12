# Git Aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gf='git fetch'
alias gp='git push'
alias gl='git pull'
alias gm='git merge'
alias gr='git restore'

# Linus Aliases
alias cat='bat'
alias ls='exa'
alias ll='exa -la'

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

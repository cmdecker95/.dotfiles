# Git Aliases
alias gl='git log'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gf='git fetch --prune'
alias gg='lazygit'
alias gP='git push'
alias gp='git pull'
alias gm='git merge'
alias gr='git restore'
alias gR='git reset'

# Linux Aliases
alias cat='bat'
alias cd='z'
alias ls='ls --color=auto'
alias ll='ls -laF'
alias ff='fzf'
alias mk='function _mk(){ mkdir "$1" && cd "$1"; };_mk'

# Python Aliases
alias python='python3'
alias pip='pip3'

# Tmux Aliases
alias tm='tmux'
alias tn='tmux new -s'
alias ta='tmux a'
alias tt='tmux a -t'
alias tl='tmux ls'

# Docker Aliases
alias ld='lazydocker'

# Bun
[ -s "/Users/christian/.bun/_bun" ] && source "/Users/christian/.bun/_bun"
[ -s "/Users/christiandecker/.bun/_bun" ] && source "/Users/christiandecker/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Bun Aliases
alias bd='bun dev -- --open'

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# fzf
source <(fzf --zsh)

# Colima
export DOCKER_HOST=unix://$HOME/.colima/default/docker.sock

# Activate syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# pnpm
export PNPM_HOME="/Users/christiandecker/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# OpenJDK
export PATH="/opt/homebrew/opt/openjdk@23/bin:$PATH"

# Git Aliases
alias gam='git add . && git commit -m'
alias gf='git fetch --prune --all'
alias gg='lazygit'
alias gl='git log --oneline -n 10'

# Linux Aliases
alias cd='z' # use zoxide instead of cd
alias ls='ls --color=auto'
alias ll='ls -laF'
alias mk='function _mk(){ mkdir "$1" && cd "$1"; };_mk'
alias rmds='find ~ -name .DS_Store -delete'

# Python Aliases
alias python='python3'
alias pip='pip3'

# Tmux Aliases
alias tm='tmux'
alias tn='tmux new -s'
alias ta='tmux a'
alias tt='tmux a -t'
alias tl='tmux ls'
bindkey -M viins '^P' up-history
bindkey -M viins '^N' down-history
bindkey -M viins '^R' history-incremental-search-backward

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias bd='bun dev -- --open'

# Starship
command -v starship >/dev/null && eval "$(starship init zsh)"

# Zoxide
command -v zoxide >/dev/null && eval "$(zoxide init zsh)"

# fzf
command -v fzf >/dev/null && source <(fzf --zsh)

# Activate syntax highlighting
if command -v brew >/dev/null; then
  src="$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  [ -s "$src" ] && source "$src"
fi

# Disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# rapidfort CLI
export PATH="$PATH:$HOME/.rapidfort"

# Java
if java_home=$(/usr/libexec/java_home 2>/dev/null); then
  export JAVA_HOME="$java_home"
fi

# Binaries installed by Go (namely bootdev from Boot.dev)
export PATH="$HOME/go/bin:$PATH"

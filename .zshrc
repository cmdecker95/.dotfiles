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

# Config
export XDG_CONFIG_HOME="$HOME/.config"

# Deduplicate inherited paths and initialize cached completions once.
typeset -U path fpath
autoload -Uz compinit
compinit

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
  src="${HOMEBREW_PREFIX:-$(brew --prefix)}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
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

# Java
if [[ -z "$JAVA_HOME" || ! -x "$JAVA_HOME/bin/java" ]] && java_home=$(/usr/libexec/java_home 2>/dev/null); then
  export JAVA_HOME="$java_home"
fi

# Binaries installed by Go (namely bootdev from Boot.dev)
export PATH="$HOME/go/bin:$PATH"

# Load nvm on first use (or first Tab completion), rather than in every shell.
export NVM_DIR="$HOME/.nvm"
if [[ -s /opt/homebrew/opt/nvm/nvm.sh ]]; then
  nvm() {
    unfunction nvm
    source /opt/homebrew/opt/nvm/nvm.sh --no-use || return
    [[ ! -s /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm ]] || source /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm
    nvm "$@"
  }
  _nvm_lazy_completion() {
    nvm --version >/dev/null || return
    _bash_complete -o default -F __nvm "$@"
  }
  compdef _nvm_lazy_completion nvm
fi

# private
local_sh="$HOME/.dotfiles/.local.sh"
[ -s "$local_sh" ] && source "$local_sh"

# zsh edit-command-line
export EDITOR=nvim
export VISUAL=nvim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

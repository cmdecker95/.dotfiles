# aliases
alias ll='ls -la'

# conda
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup


# bun completions
[ -s "/Users/christian/.bun/_bun" ] && source "/Users/christian/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# starship
eval $(starship init zsh)

# bun completions
[ -s "/Users/christiandecker/.bun/_bun" ] && source "/Users/christiandecker/.bun/_bun"
export PATH="/usr/local/sbin:$PATH"

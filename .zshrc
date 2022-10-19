# Aliases
# --Commands
alias ll='ls -l'

# --Conda
alias py='conda activate'       # activates python 3.10 env
alias ds='conda activate ds'    # activates data science env
alias xx='conda deactivate'

# --Jupyter
alias jn='jupyter notebook ~/Documents/Code'
alias jl='jupyter lab ~/Documents/Code'

# Environment variables
export DATABASE_URL="postgresql:///postgres"
export FLASK_ENV=development

# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# Conda (installed as miniforge)
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

# Start in Starship Prompt
eval $(starship init zsh)
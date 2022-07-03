# Aliases
alias py='conda activate'       # activates python 3.10 env
alias ds='conda activate ds'    # activates data science env
alias xx='conda deactivate'
alias jn='jupyter notebook ~/Documents/Code'
alias jl='jupyter lab ~/Documents/Code'

# Environment variables
export DATABASE_URL="postgresql:///postgres"
export FLASK_ENV=development

# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# Conda (installed as miniforge)
if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
    . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
else
    export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
fi

# Start in Starship Prompt
eval $(starship init zsh)

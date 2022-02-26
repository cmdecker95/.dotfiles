# Aliases
alias py='conda activate'
alias ds='conda activate ds'
alias xx='conda deactivate'
alias jn='jupyter notebook'
alias ss='eval $(starship init zsh)'


# VS Code
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh


# Conda
if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
    . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
else
    export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
fi


# Start in Starship Prompt
ss

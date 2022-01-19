# Terminal Style
PROMPT='
%B%S%F{white} %n %f%b%F{cyan} %~ %f%s
λ '

# Aliases
alias bs='conda activate base'
alias ds='conda activate ds'
alias xx='conda deactivate'
alias jn='jupyter notebook'

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
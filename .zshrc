# Terminal Style
PROMPT='
%B%S%F{white} %n %f%b%F{cyan} %~ %f%s
λ '

# Aliases
alias bs='conda activate base'
alias ds='conda activate ds'
alias dx='conda deactivate'
alias jl='jupyter lab'
alias jn='jupyter notebook'
alias pip='pip3'
alias python='python3'
alias ss='eval $(starship init zsh)'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cmdecker/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cmdecker/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cmdecker/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cmdecker/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# VS Code
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

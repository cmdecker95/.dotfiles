# Terminal Style
PROMPT='
%F{blue}%n%f on %F{green}%m%f in %F{yellow}%~%f
λ '

# Aliases
alias ds='conda activate ds'
alias jn='jupyter notebook'
alias jl='jupyter lab'

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
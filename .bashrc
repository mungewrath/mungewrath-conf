# Personal configuration for Matthew Unrath #

#==== Exports ====#
export EDITOR='vim'

#==== Aliases ====#
alias mu-update="pushd $MUNGEWRATH_HOME; ./update-repo.sh; popd"
alias ..='cd ..'

# Auto set up TMUX session
if [ -z "$TMUX" ]; then
    tmux attach -t base || tmux new -s base
fi

#Uncomment to enable terminal coloring
#export PS1="\e[0;32m[MATTDEV \W]$ \e[m"

# Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# End Matthew Unrath configuration #

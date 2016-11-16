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

# End Matthew Unrath configuration #

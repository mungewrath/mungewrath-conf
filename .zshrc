# Personal configuration for Matthew Unrath #

#==== Exports ====#
export EDITOR='vim'

#==== Aliases ====#
alias mu-update="pushd $MUNGEWRATH_HOME; ./update-repo.sh; popd"
alias ..='cd ..'
alias tf='terraform'

# Auto set up TMUX session
if [ -z "$TMUX" ]; then
    tmux attach -t base || tmux new -s base
fi

#Uncomment to enable terminal coloring
#export PS1="\e[0;32m[MATTDEV \W]$ \e[m"

# Git auto-complete
#if [ -f ~/.git-completion.bash ]; then
#    . ~/.git-completion.bash
#fi

MUNGEWRATH_HOME='/Users/mattunrath/mungewrath-conf'


# ZSH coloring
autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}[%T] %% "

# ZSH history setup
HISTSIZE=10000
SAVEHIST=10000
HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"

# Lots of settings from https://martinheinz.dev/blog/110?utm_source=pocket_reader

# https://zsh.sourceforge.io/Doc/Release/Options.html (16.2.4 History)
setopt EXTENDED_HISTORY      # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY    # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY         # Share history between all sessions.
setopt HIST_IGNORE_DUPS      # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS  # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE     # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS     # Do not write a duplicate event to the history file.
setopt HIST_VERIFY           # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY        # append to history file (Default)
setopt HIST_NO_STORE         # Don't store history commands
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks from each command line being added to the history.

#"^R" fzf-history-widget  # ^R is CTRL+R

bindkey "^[b" backward-word
bindkey "^[f" forward-word

# Needed as a bandaid for SAM, local miniwdl unable to reach docker
#sudo ln -s "$HOME/.docker/run/docker.sock" /var/run/docker.sock

# From Macports - run the following before using MacFuse:
# sudo ln -fsn /opt/local/Library/Filesystems/macfuse.fs /Library/Filesystems/macfuse.fs


# dotnet doesn't like to start in VS Code unless this is here
#export DOTNET_ROOT="$(dirname $(which dotnet))"
#launchctl setenv PATH $PATH:/usr/local/share/dotnet

# End Matthew Unrath configuration #

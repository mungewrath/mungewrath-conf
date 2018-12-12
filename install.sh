#!/bin/bash

set -x

MUNGEWRATH_HOME=`pwd`

if [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    op='cp -f'
else
    op='ln -s'
fi

$($op `pwd`/.vimrc ~/.vimrc)
echo "(hopefully) set up vimrc!"
$($op `pwd`/.tmux.conf ~/.tmux.conf)


if [ -f ~/.bashrc ];
then
    echo "bashrc exists - appending"
    cat .bashrc >> ~/.bashrc
else
    echo "no bashrc present - creating"
    cp .bashrc ~/.bashrc
fi

# Other Bash setup
echo "MUNGEWRATH_HOME='$MUNGEWRATH_HOME'" >> ~/.bashrc
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

echo "Setup completed!"

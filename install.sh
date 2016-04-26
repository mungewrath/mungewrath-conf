#!/bin/bash
ln -s `pwd`/.vimrc ~/.vimrc
ln -s `pwd`/.tmux.conf ~/.tmux.conf

if [ -f ~/.bashrc ];
then
    echo "bashrc exists - appending"
    cat .bashrc >> ~/.bashrc
else
    echo "no bashrc present - creating"
    cp .bashrc ~/.bashrc
fi

echo "(hopefully) set up vimrc!"

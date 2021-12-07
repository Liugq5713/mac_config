#! /bin/bash

WORKDIR=`pwd`

cd $HOME

cp $HOME/.zshrc $WORKDIR/zsh
cp $HOME/.tmux.conf.local $WORKDIR/tmux
cp $HOME/.config/alacritty/alacritty.yml $WORKDIR/alacritty
cp -r $HOME/bin $WORKDIR

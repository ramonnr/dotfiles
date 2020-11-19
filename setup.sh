#!/usr/bin/env sh

set -ex
echo "this will symlink things all over your home, hope you like it"

ln -sf $(pwd)/.tmux.conf ~/

mkdir -p ~/.config/nvim
ln -sf $(pwd)/nvim/init.vim ~/.config/nvim/
ln -sf $(pwd)/nvim/plug-config/ ~/.config/nvim/
mkdir -p ~/.config/alacritty
ln -sf $(pwd)/alacritty.yml ~/.config/alacritty/

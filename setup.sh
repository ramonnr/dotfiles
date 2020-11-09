#!/usr/bin/env sh

# param: echo this string before exiting
fail(){
    echo $1
    exit 1
}

echo "this will symlink things all over your home, hope you like it"

ln -sf $(pwd)/.tmux.conf ~/ || fail "tmux.conf failed"

mkdir -p ~/.config/nvim
ln -sf $(pwd)/nvim/init.vim ~/.config/nvim/ || fail "init.vim failed"
ln -sf $(pwd)/nvim/plug-config/ ~/.config/nvim/ || fail "plug-config failed"


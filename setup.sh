#!/bin/bash
mkdir -p ~/.config/locals
touch ~/.config/locals/vim.vim
touch ~/.config/locals/vimplug.vim
touch ~/.config/locals/shell.sh
touch ~/.config/locals/fish.fish

ln -sfn ~/dotfiles/.gitconfig ~/.gitconfig
ln -sfn ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sfn ~/dotfiles/.vimrc ~/.vimrc
ln -sfn ~/dotfiles/.vim ~/.vim
ln -sfn ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sfn ~/dotfiles/.inputrc ~/.inputrc
ln -sfn ~/dotfiles/.zshrc ~/.zshrc
ln -sfn ~/dotfiles/.bashrc ~/.bashrc

ln -sfn ~/dotfiles/.config/fish ~/.config/fish
ln -sfn ~/dotfiles/.config/nvim ~/.config/nvim

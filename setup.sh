#!/bin/bash
mkdir -p ~/.config

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
ln -sfn ~/dotfiles/.config/shell.sh ~/.config/shell.sh

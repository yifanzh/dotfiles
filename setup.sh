#!/bin/bash

ln -sfn ~/dotfiles/gitconfig ~/.gitconfig
ln -sfn ~/dotfiles/gitignore_global ~/.gitignore_global
ln -sfn ~/dotfiles/vimrc ~/.vimrc
ln -sfn ~/dotfiles/vim ~/.vim
ln -sfn ~/dotfiles/tmux.conf ~/.tmux.conf

# load init script in bash and zsh
cat ~/dotfiles/loader.sh >> ~/.zshrc
cat ~/dotfiles/loader.sh >> ~/.bashrc

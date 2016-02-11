#!/bin/bash

# Downloading VIM config file
curl -fLo ~/.vimrc --create-dirs https://raw.githubusercontent.com/snowmean/vimrc/vimrc

# Downloading and installing vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


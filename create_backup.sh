#!/bin/bash

cp -r ~/bin ./bin

cp -r ~/.config ./.config
rm -r ./.config/Code
rm -r ./.config/Microsoft

rm -r ./.themes 
rm -r ./.icons
cp -r ~/.themes ./.themes
cp -r ~/.icons ./.icons

cp ~/.bashrc ./.bashrc
cp ~/.vimrc ./.vimrc
cp ~/.gitconfig ./.gitconfig



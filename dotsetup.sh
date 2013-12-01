#!/bin/bash

git submodule init
git submodule update

for dotfile in  .gemrc .gitconfig .pryrc .railsrc .tigrc .toprc .vim .vimrc .zprofile .zshenv .zshrc
do
  rm -fr ~/$dotfile
  ln -vnfs $PWD/$dotfile ~/$dotfile
done


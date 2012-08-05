#!/bin/bash

cd ~

# install oh-my-zsh
echo "Cloning Oh My Zsh"
hash git >/dev/null || {
    echo "Error: git not installed";
    exit;
}

/usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh || {
    echo "Oh My Zsh is already installed";
}

if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
    echo "Found ~/.zshrc. Backing up to ~/.zshrc.pre-oh-my-zsh";
    cp ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
    rm ~/.zshrc;
fi

echo "Cloning hellerbarde/dotfiles repository";
git clone git@github.com:hellerbarde/dotfiles.git ~/.dotfiles

echo "Linking stuff"
echo ".zshrc"
ln -s .dotfiles/zshrc ~/.zshrc;


echo "Change your shell to zsh: chsh -s `which zsh`"

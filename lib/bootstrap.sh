#!/bin/bash

hash git >/dev/null || {
    echo "Error: git not installed";
    exit 2;
}

cd ~

# check for oh-my-zsh
if [ ! -a ~/.oh-my-zsh ]; then
    # install oh-my-zsh
    echo "Cloning Oh My Zsh";
    /usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
    echo "Oh My Zsh is already installed.";
fi



# check for oh-my-zsh
if [ ! -a ~/.dotfiles ]; then
    echo "Cloning hellerbarde/dotfiles repository";
    git clone https://github.com/hellerbarde/dotfiles.git ~/.dotfiles
else
    echo "~/.dotfiles exists already."
    # TODO Maybe check if it's my own .dotfiles and if so, update it.
fi

if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
    echo "Found ~/.zshrc. Backing up to ~/.zshrc.pre-oh-my-zsh";
    cp ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
    rm ~/.zshrc;
fi

echo "Linking stuff"
echo "for zsh"
ln -s .dotfiles/zshrc ~/.zshrc;
echo "for vim"
ln -s .dotfiles/vim/vimrc.after ~/.vimrc.after
ln -s .dotfiles/vim/vimrc.before ~/.vimrc.before
ln -s .dotfiles/vim/gvimrc.after ~/.gvimrc.after
ln -s .dotfiles/vim/gvimrc.before ~/.gvimrc.before
echo "Change your shell to zsh: chsh -s `which zsh`"

# TODO: Vim/Janus installation


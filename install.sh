#!/bin/bash
## Based on the repository:
## - https://github.com/jamiekt/dotfiles/blob/main/install.sh
## - https://github.com/solnic/dotfiles-example/tree/main

root="$(pwd)"
echo "Installing dotfiles from $root"

echo
echo
echo '-----------------------------------------------------'
echo "Copying aliases to ~/.aliases..."
echo '-----------------------------------------------------'
cp "$root/home/aliases" ~/.aliases

echo
echo
echo '-----------------------------------------------------'
echo "Installing powerline fonts..."
echo '-----------------------------------------------------'
git clone --depth=1 https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd .. && rm -rf fonts

echo
echo
echo '-----------------------------------------------------'
echo "Installing zsh-autosuggestions..."
echo '-----------------------------------------------------'
zsh -c 'git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
echo
echo
echo '-----------------------------------------------------'
echo "Installing zsh-syntax-highlighting..."
echo '-----------------------------------------------------'
zsh -c 'git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
echo
echo
echo '-----------------------------------------------------'
echo "Installing powerlevel10k..."
echo '-----------------------------------------------------'
zsh -c 'git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/themes/powerlevel10k'
cp "$root/home/p10k.zsh" ~/.p10k.zsh

echo
echo
echo '-----------------------------------------------------'
echo "Copying zshrc to ~/.zshrc..."
echo '-----------------------------------------------------'
cp "$root/home/zshrc" ~/.zshrc
echo
echo

echo
echo
echo '-----------------------------------------------------'
echo "Copying gitignore_global to ~/.gitignore_global..."
echo '-----------------------------------------------------'
cp "$root/home/gitignore_global" ~/.gitignore_global
echo
echo
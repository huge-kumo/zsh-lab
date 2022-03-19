#!/bin/sh

for shell in $(cat /etc/shells); do
    if [ "$shell" = "/bin/zsh" ]; then
        is_exist_zsh=true
    fi
done

if [ "$is_exist_zsh" != "true" ]; then
    sudo apt install zsh
    sudo chsh -s /bin/zsh
fi

if [ ! -f "~/.zshrc" ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi

cp .zshrc ~/.zshrc

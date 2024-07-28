#!/bin/bash

# 1. install zsh, support CentOS and Ubuntu
# Check if the current environment is CentOS
if [ -f /etc/centos-release ]; then
    echo "Detected CentOS environment"
    # Check if Zsh is already installed
    if ! command -v zsh &> /dev/null; then
        echo "Zsh is not installed. Installing..."
        sudo yum install -y zsh
    else
        echo "Zsh is already installed"
    fi

# Check if the current environment is Ubuntu
elif [ -f /etc/lsb-release ]; then
    echo "Detected Ubuntu environment"
    # Check if Zsh is already installed
    if ! command -v zsh &> /dev/null; then
        echo "Zsh is not installed. Installing..."
        sudo apt-get update
        sudo apt-get install -y zsh
    else
        echo "Zsh is already installed"
    fi

else
    echo "Unsupported operating system"
    exit 1
fi

# 2. setup oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# 3. change oh-my-zsh theme
mv ~/.oh-my-zsh/themes/robbyrussell.zsh-theme ~/.oh-my-zsh/themes/robbyrussell.zsh-theme.bak
cp ./.oh-my-zsh/themes/robbyrussell.zsh-theme ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
source ~/.zshrc

# 4. setup vim 
cp vimrc ~/.vimrc
#!/bin/bash

sudo apt install ruby-full tmux zsh python3-venv

# Clone zsh config
ln -s ~/.config/zsh/.zshrc ~/.zshrc

# Setup Tmux base
ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Get Tmux theme
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.1 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux

# NVM and after install manually set version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
# nvm install node

# NVim
# Use snap or flatpak

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Go
wget https://go.dev/dl/go1.23.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.3.linux-amd64.tar.gz

# Terminus
curl -L https://github.com/Exafunction/codeium/releases/download/termium-v0.2.0/install.sh | bash

# Bun
curl -fsSL https://bun.sh/install | bash

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Allow opening browser from wsl
sudo add-apt-repository ppa:wslutilities/wslu
sudo apt update
sudo apt install wslu

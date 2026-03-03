#!/usr/bin/env bash

# Install latest neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo rm -rf nvim-linux-x86_64.tar.gz

sudo apt-get install ripgrep fzf

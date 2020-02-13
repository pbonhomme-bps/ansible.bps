#!/usr/bin/env sh
# If one command exits with an error, stop the script immediately.
set -e
# Print every line executed to the terminal
set -x
source /etc/profile.d/bps-dev.sh
source /opt/rh/devtoolset-8/enable
cd $HOME/dev/BPS-Dev-Setup
# Neovim CentOS 6 Requirements
sudo yum -y install ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip patch
# Neovim
#brew install neovim
git clone --recursive https://github.com/neovim/neovim && cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install
# Install Vim-Plug
mkdir -p $HOME/.local/share/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Neovim Debugger(vimspector) Requirements
sudo yum -y install mono-core mono-devel

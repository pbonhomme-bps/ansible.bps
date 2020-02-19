#!/usr/bin/env sh
source /etc/profile.d/bps-dev.sh
source /opt/rh/devtoolset-8/enable
cd $HOME/dev/BPS-Dev-Setup
# Cleanup
rm ncurses-6.1.tar.gz
rm zsh.tar.xz
# NCurses Dependency
wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz
tar xf ncurses-6.1.tar.gz
cd ncurses-6.1
./configure --prefix=$HOME/.local CXXFLAGS="-fPIC" CFLAGS="-fPIC"
make -j && make install
# Install Zsh
cd $HOME/dev/BPS-Dev-Setup
wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
tar xf zsh.tar.xz
rm zsh.tar.xz
mv zsh* zsh
cd zsh
./configure --prefix="$HOME/.local" \
    CPPFLAGS="-I$HOME/.local/include" \
    LDFLAGS="-L$HOME/.local/lib" \
    --with-tcsetpgrp
make -j && make install
#sudo ln -s $HOME/.local/bin/zsh /usr/local/bin/zsh
# Install ZPlug
export ZPLUG_HOME=$HOME/.zplug && git clone https://github.com/zplug/zplug $ZPLUG_HOME

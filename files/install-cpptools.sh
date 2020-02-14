#!/usr/bin/env sh
source /etc/profile.d/bps-dev.sh
cd $HOME/dev/BPS-Dev-Setup
# LLVM LibC++
# LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/llvm/lib -Wl,-rpath,/home/linuxbrew/.linuxbrew/opt/llvm/lib"
brew install cmake ninja
brew install llvm
export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/llvm/lib -Wl,-rpath,/home/linuxbrew/.linuxbrew/opt/llvm/lib"
brew install ccls
#git clone https://github.com/llvm/llvm-project.git && cd llvm-project
#cmake -H. -BRelease -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lldb" llvm
#cmake --build Release -- -j4
#cd Release && sudo make install
# Install Useful Tools, Some Depend on Clang
cargo install skim
cargo install ripgrep
cargo install fd-find
cargo install exa
#cargo install bat
cargo install diffr
#cargo install hunter
cargo install hyperfine
brew install bat
brew install jq

#!/bin/bash
sudo apt install mingw-w64 git ruby -y
sudo gem install fpm
git clone https://github.com/PPPDUD/homemade_yes.git
rustup target add x86_64-pc-windows-gnu

#!/bin/bash
cd homemade_yes
git pull
cargo build --release
cargo build --target x86_64-pc-windows-gnu --release
cp target/x86_64-unknown-linux-musl/release/homemade_yes deb_package/homemade_yes
mkdir -p deb_package && cd deb_package
rm -f homemade_yes.deb
fpm \
  -s dir -t deb \
  -p homemade_yes.deb \
  --name homemade_yes \
  --license mit \
  --version 0.3.0 \
  --architecture amd64 \
  --description "A fast and permissively-licensed replacement for GNU yes." \
  --url "https://github.com/PPPDUD/homemade_yes" \
  --maintainer "PPPDUD <mojavesoft@gmail.com>" \
  homemade_yes=/usr/bin/homemade_yes
  
rm homemade_yes

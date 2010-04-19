#!/bin/bash
# from http://code.google.com/p/macvim/wiki/Building

cd src
make clean
./configure --enable-gui=macvim --with-features=huge --enable-cscope --enable-perlinterp --enable-pythoninterp --enable-rubyinterp --enable-sniff --enable-multibyte --with-macarchs=x86_64 --with-macsdk=10.6
make
cd MacVim
xcodebuild
rm -rf MacVim.app
mv build/Release/MacVim.app ../../

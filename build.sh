#!/bin/bash
# from http://code.google.com/p/macvim/wiki/Building

cd src
./configure --enable-gui=macvim --with-features=huge --enable-cscope --enable-perlinterp --enable-pythoninterp --enable-rubyinterp --enable-sniff --enable-multibyte --with-macarchs=i386 --with-macsdk=10.5
make
cd MacVim
xcodebuild
rm -rf MacVim.app
mv build/Release/MacVim.app ../../

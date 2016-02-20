#!/bin/sh

#apt-get install ctags
cp ../ctags/output/bin/ctags /usr/bin

cp -rf vim /etc
cp ino.vim /usr/local/share/vim/vim72/syntax
cp c.vim /usr/local/share/vim/vim72/syntax
cp cpp.vim /usr/local/share/vim/vim72/syntax
rm -rf /usr/local/share/vim/vim72/plugin
cp -rf plugin /usr/local/share/vim/vim72

install -m 755 ./tags.sh /usr/bin
install -m 755 ./astyle /usr/bin

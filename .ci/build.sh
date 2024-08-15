#!/usr/bin/bash

set -eux

# Build wxWidgets, git
#git clone https://github.com/wxWidgets/wxWidgets.git
#pushd wxWidgets/

# Modify setup.h
#sed -i ＇1568,1568s/0/1/g＇ include/wx/setup.h

#./configure --enable-monolithic --disable-debug --enable-stl
#make -j$(nproc) install
#cp -rf include/wx/* /mingw32/include/wx-3.2/wx/
#popd

# Build codeblocks
git clone https://github.com/arnholm/codeblocks_sfmirror.git
pushd codeblocks_sfmirror/

# Patch build
#git apply -v ../001-fix-32bit-build.patch
#sed -i ＇78,78s/WX_CXXFLAGS/WX_CPPFLAGS/g' src/src/Makefile.am
cp -f ../Makefile.am src/src/

./bootstrap
./configure --with-contrib-plugins=all --prefix=/opt/codeblocks
make -j$(nproc) install

#!/usr/bin/bash

set -eux

########################### Not used ########################
# Build wxWidgets, git
#git clone https://github.com/wxWidgets/wxWidgets.git
#pushd wxWidgets/

# Modify setup.h


#./configure --enable-monolithic --disable-debug --enable-stl
#make -j$(nproc) install
#cp -rf include/wx/* /mingw32/include/wx-3.2/wx/
#popd
#############################################################

# Build codeblocks
git clone https://github.com/arnholm/codeblocks_sfmirror.git
pushd codeblocks_sfmirror/

# Patch build
cp -f ../Makefile.am src/src/

./bootstrap
./configure --disable-pch --with-contrib-plugins=all,-wxsmith,-wxsmithaui,-wxsmithcontrib,-Valgrind --prefix=/opt/codeblocks
make -j$(nproc) install
mv /opt/codeblocks/lib/codeblocks/bin/*.dll /opt/codeblocks/bin/

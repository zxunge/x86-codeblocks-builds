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

## Clone CodeBlocks' source
git clone https://github.com/arnholm/codeblocks_sfmirror.git
pushd codeblocks_sfmirror/

## Obtain revision number
TAG=r$(git log --graph | grep 'git-svn-id' | head -n 1 | grep -o -e "@\([0-9]*\)" | tr -d '@ ')
WX_VERSION=$(wx-config --version-full)
NAME="CodeBlocks svn "${TAG}" and wxWidgets "${WX_VERSION}" Build"

## Build CodeBlocks
./bootstrap
./configure --disable-pch --with-contrib-plugins=all,-Valgrind --prefix=/opt/codeblocks
make -j$(nproc) install
mv /opt/codeblocks/lib/codeblocks/bin/*.dll /opt/codeblocks/bin/
#mv /opt/codeblocks/lib/*.dll /opt/codeblocks/bin/

if [[ -v GITHUB_WORKFLOW ]]; then
  echo "RELEASE_NAME=${NAME}" >> $GITHUB_OUTPUT
  echo "RELEASE_TAG=${TAG}" >> $GITHUB_OUTPUT
fi

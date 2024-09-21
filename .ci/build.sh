#!/usr/bin/bash

set -eux

RELEASE_NAME="CodeBlocks 13571 and wxWidgets 3.2.6 Build"

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

## Build codeblocks
git clone https://github.com/arnholm/codeblocks_sfmirror.git
pushd codeblocks_sfmirror/

## Patch build
git apply -v ../0001-fix-32-bit-build-and-wxSmith.patch
# Workaround from msys2: error: definition of static data member 'wxsArrayStringEditorDlg::sm_eventTable' of dllimport'd class
grep -rl "PLUGIN_EXPORT " src/plugins/contrib/wxSmith | xargs -i sed -i "s/PLUGIN_EXPORT //g" {}

./bootstrap
./configure --disable-pch --with-contrib-plugins=all,-Valgrind --prefix=/opt/codeblocks
make -j$(nproc) install
mv /opt/codeblocks/lib/codeblocks/bin/*.dll /opt/codeblocks/bin/
mv /opt/codeblocks/lib/*.dll /opt/codeblocks/bin/

if [[ -v GITHUB_WORKFLOW ]]; then
  echo "RELEASE_NAME=${NAME}" >> $GITHUB_OUTPUT
fi

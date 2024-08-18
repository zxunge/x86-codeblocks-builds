[![main](https://github.com/zxunge/x86-codeblocks-builds/actions/workflows/main.yml/badge.svg)](https://github.com/zxunge/x86-codeblocks-builds/actions/workflows/main.yml)

# General Introduction
Automatically built codeblocks for both 32-bit and 64-bit Windows systems. You can always download the latest release at [Releases](https://github.com/zxunge/x86-codeblocks-builds/releases)
## Usage
Install the following packages in msys2(64-bit users please use 'x86-64' instead of 'i686'):
````
pacman -S mingw-w64-i686-toolchain            \
          mingw-w64-i686-boost                \
          mingw-w64-i686-hunspell             \
          mingw-w64-i686-wxwidgets3.2-common  \
          mingw-w64-i686-wxwidgets3.2-msw     \
          mingw-w64-i686-drmingw              \
          mingw-w64-i686-tinyxml
````

Then extract the archive into /opt/codeblocks, export /opt/codeblocks/bin to PATH.
Run codeblocks!

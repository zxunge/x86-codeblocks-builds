[![main](https://github.com/zxunge/i686-codeblocks-builds/actions/workflows/main.yml/badge.svg)](https://github.com/zxunge/i686-codeblocks-builds/actions/workflows/main.yml)

# General Introduction
Automatically built codeblocks for 32b systems. There are also mingw64 versions, please download them in the Actions->Artifacts.

## Usage
Install the following packages in msys2:
- mingw-w64-i686-toolchain
- mingw-w64-i686-boost
- mingw-w64-i686-hunspell
- mingw-w64-i686-wxwidgets3.2-common
- mingw-w64-i686-wxwidgets3.2-msw
- mingw-w64-i686-drmingw

Then extract the archive into /opt/codeblocks, export /opt/codeblocks/bin to PATH.
Run codeblocks!

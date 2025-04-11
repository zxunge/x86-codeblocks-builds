[![build](https://github.com/zxunge/x86-codeblocks-builds/actions/workflows/build.yml/badge.svg)](https://github.com/zxunge/x86-codeblocks-builds/actions/workflows/build.yml)
[![Downloads](https://img.shields.io/github/downloads/zxunge/x86-codeblocks-builds/total.svg?maxAge=2592001)](https://github.com/zxunge/x86-codeblocks-builds/releases/)
[![Welcome PRs](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/zxunge/x86-codeblocks-builds/pulls)
[![Stars](https://img.shields.io/github/stars/zxunge/x86-codeblocks-builds)](https://github.com/zxunge/x86-codeblocks-builds/stargazers)
![Github](https://img.shields.io/badge/Github-100000.svg?logo=github&logoColor=white)

# General Introduction
Automatically built Code::Blocks binaries for both 32-bit and 64-bit Windows systems. You can always download the latest release at [Releases](https://github.com/zxunge/x86-codeblocks-builds/releases)

## Usage
> [!NOTE]
> As 32-bit wxWidgets packages are not provided officially by MSYS2, we suggest you using the archives from
> [zxunge/mingw-package-archives: Msys2 32-bit archives.](https://github.com/zxunge/mingw-package-archives)
> You can clone the repo and use pacman -U to install them.
> As a result, the wxWidgets version for 32-bit build has stuck to 3.2.6.0.

Install the following packages in msys2(32-bit users please use 'i686' instead of 'x86_64'):
````
pacman -S mingw-w64-x86_64-toolchain            \
          mingw-w64-x86_64-boost                \
          mingw-w64-x86_64-hunspell             \
          mingw-w64-x86_64-wxwidgets3.2-common  \
          mingw-w64-x86_64-wxwidgets3.2-msw     \
          mingw-w64-x86_64-drmingw              \
          mingw-w64-x86_64-tinyxml
````

Then extract the archive into /opt/codeblocks, export /opt/codeblocks/bin to PATH.
Run codeblocks!

> [!NOTE]
> This package requires a working MSYS2 Environment on your computer.
> Those who don't want to install MSYS2 please refer to one of this repository's forks:
> [asmwarrior/x86-codeblocks-builds](https://github.com/asmwarrior/x86-codeblocks-builds)

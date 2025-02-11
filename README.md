# Requirements

- Neovim >= 0.10
- NodeJs
- GCC
- Ripgrep
- LazyGit

## GCC
`brew install gcc`

## MinGW (GCC for Windows)
### Msys2

Help: https://www.youtube.com/watch?v=0HD0pqVtsmw&ab_channel=LearningLad

#### Update the package database
`pacman -Syu`
`pacman -Su`

#### Open up the Msys MinGW terminal
To install gcc and g++ for C and C++ 
- For 64 bit: `pacman -S mingw-w64-x86_64-gcc`
- For 32 bit: `pacman -S mingw-w64-i686-gcc`

To install the debugger (gdb) for C and C++
- For 64 bit: `pacman -S mingw-w64-x86_64-gdb`
- For 32 bit: `pacman -S mingw-w64-i686-gdb`

#### To check
- gcc version : `gcc --version`
- g++ version : `g++ --version`
- gdb version : `gdb --version`

#### Set the Path Environment Variable
Add the address of the bin folder to the Path variable

## NodeJS
- Windows: "https://nodejs.org/es"
- HomeBrew: `brew install node`

## Neovim
- Windows: "https://neovim.io/"
- HomeBrew: `brew install neovim`

## Ripgrep
- Windows (Windows Chocolatey): `choco install ripgrep`
- HomeBrew: `brew install ripgrep`

## Lazygit
- Windows (Windows Chocolatey): `choco install lazygit`
- HomeBrew: `brew install lazygit`

# Locations
Estas configuraciones deben ir en:

## Windows
`C:Users/AppData/Local/nvim`

## Linux: 
`~/.config/nvim`

# Extra
## HomeBrew
https://brew.sh/

## WSL
Win32Yank (Chocolatey): Herramienta para copiar contenido al clipboard de Windows cuando se utiliza WSL
`choco install win32yank`

#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep

# Install development tools
brew install gcc openjdk nvm python@3.12 ruby

# Install version control tools
brew install libgit2@1.7

# Install system utilities
brew install coreutils tmux tree fzf bat btop dust fastfetch

# Install network tools
brew install nmap aria2

# Install compression tools
brew install xz zstd lz4 lzo upx

# Install database tools
brew install postgresql@14 sqlite

# Install image processing libraries
brew install cairo freetype jpeg-turbo libpng libtiff

# Install text processing tools
brew install pcre2 oniguruma utf8proc

# Install scientific computing tools
brew install numpy openblas

# Install Swift development tools
brew install swiftformat swiftgen swiftlint

# Install shell enhancements
brew install zsh zsh-autosuggestions zsh-syntax-highlighting powerlevel10k

# Install other useful tools
brew install tldr cmatrix jp2a

# Install casks
brew install --cask raycast

# Remove outdated versions from the cellar.
brew cleanup

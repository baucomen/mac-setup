#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Tap AdoptOpenJDK
brew tap adoptopenjdk/openjdk

# install 1.8, 11, 14
brew cask install adoptopenjdk8
brew cask install adoptopenjdk11
brew cask install adoptopenjdk14

# install jenv
brew install jenv

# jenv Zsh 
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc

# source it!
source ~/.zshrc

# enable jenv plugins
jenv enable-plugin export
jenv enable-plugin maven

# add install jdks to jenv
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home

# Set global JDK version to 1.8
jenv global 1.8

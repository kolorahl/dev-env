#!/bin/sh

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "Installing git"
brew install git

echo "Install rbenv"
brew install rbenv
brew install ruby-build
rbenv init

echo "Installing Ruby v2.3.4"
rbenv install 2.3.4

echo "Installing Ruby/gem/bundler configs"
cp .gemrc ~/.gemrc

# Install version 2.4 until 2.6 is released
echo "Installing tmux"
brew install https://raw.githubusercontent.com/Homebrew/brew/2d2034afc6e4dfab0a1c48f5edd2c5478576293b/Formula/tmux.rb

echo "Installing tmuxinator"
gem install tmuxinator

echo "Installing fish shell"
brew install fish
sudo echo $(which fish) > /etc/shells
sudo chsh -s $(which fish)

echo "Installing remaining configs"
cp -r .config ~/.config

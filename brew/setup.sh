#!/bin/bash

set -o errexit
set -o nounset

ask_install_brew () {
   while true; do
      read -p "Do you wish to install brew?" yn
      case $yn in
           [Yy]* ) install_brew; break;;
           [Nn]* ) exit;;
           * ) echo "Please answer yes or no.";;
      esac
   done
}

install_brew () {
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

# install brew - if missing
if test ! $(which brew); then
   ask_install_brew
fi

# install via brew
brew bundle --file=./Brewfile



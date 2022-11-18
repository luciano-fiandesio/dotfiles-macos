#!/usr/bin/env bash

set -o errexit
set -o nounset

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PARENT=$(dirname "$SCRIPT_DIR")

install_fisher () {
  fish $SCRIPT_DIR/fisher.fish
  rm ~/.config/fish/fish_plugins
  ln -sv $SCRIPT_DIR/fish_plugins ~/.config/fish

  echo "run > 'fisher update' to install all plugins"
}


if ! [ -x "$(command -v stow)" ]; then
  echo 'Error: stow is not installed. Please install Apache Stow' >&2
  exit 1
fi

mkdir -p ~/.config/fish

stow -v -d $PARENT -S fish -t ~/.config/fish --ignore setup.sh --ignore fisher.fish --ignore fish_plugins

while true; do
    read -p "Do you wish to install fisher?" yn
    case $yn in
        [Yy]* ) install_fisher; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done



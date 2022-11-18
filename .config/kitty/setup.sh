#!/usr/bin/env bash

set -o errexit
set -o nounset

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PARENT=$(dirname "$SCRIPT_DIR")

if ! [ -x "$(command -v stow)" ]; then
  echo 'Error: stow is not installed. Please install Apache Stow' >&2
  exit 1
fi

mkdir -p ~/.config/kitty

stow -v -d $PARENT -S kitty -t ~/.config/kitty --ignore setup.sh

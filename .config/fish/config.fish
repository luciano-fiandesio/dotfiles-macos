# fish config
set --global --export DOTFILES_REPO ~/.dotfiles

# no greeting
set fish_greeting

source ~/.config/fish/path.fish
source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

# for things not checked into git..
if test -e "$HOME/.config/fish/.extra.fish";
  source ~/.config/fish/.extra.fish
end

# asdf
source ~/.asdf/asdf.fish

# EDITOR
set -Ux EDITOR vim

# Enable starship prompt
# https://starship.rs/
starship init fish | source

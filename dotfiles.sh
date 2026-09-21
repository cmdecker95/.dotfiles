#!/bin/zsh
echo "Configuring dotfiles..."

if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file "$HOME/.dotfiles/Brewfile"

ln -sfn "$HOME/.dotfiles/.zprofile" "$HOME/.zprofile"
ln -sfn "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"
ln -sfn "$HOME/.dotfiles/.tmux.conf" "$HOME/.tmux.conf"

mkdir -p "$HOME/.config"
ln -sfn "$HOME/.dotfiles/starship.toml" "$HOME/.config/starship.toml"

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

echo "Successfully configured dotfiles!"

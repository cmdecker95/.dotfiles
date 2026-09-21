#!/bin/zsh
echo "🔧🔧🔧"

# install homebrew if not installed, then install brews from brefile
if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file "$HOME/.dotfiles/Brewfile"

# plant configs on host
mkdir -p "$HOME/.config"
ln -sfn "$HOME/.dotfiles/starship.toml" "$HOME/.config/starship.toml"
ln -sfn "$HOME/.dotfiles/.zprofile" "$HOME/.zprofile"
ln -sfn "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"
ln -sfn "$HOME/.dotfiles/.tmux.conf" "$HOME/.tmux.conf"

# rice up tmux
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# rice up nvim
if [ ! -d "$HOME/.config/nvim" ]; then
  git clone git@github.com:cmdecker95/nvim.git "$HOME/.config/nvim"
fi

echo "🎉🎉🎉"

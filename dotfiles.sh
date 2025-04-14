echo "Configuring dotfiles..."

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file ~/.dotfiles/Brewfile

# zsh
rm ~/.zprofile && ln -s ~/.dotfiles/.zprofile ~/.zprofile
rm ~/.zshrc && ln -s ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc

# git
rm ~/.gitconfig && ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm ~/.tmux.conf && ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# qmk
qmk setup -y
qmk flash keymap.json

echo "Successfully configured dotfiles!"

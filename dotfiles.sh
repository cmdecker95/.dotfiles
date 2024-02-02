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

# nvim
rm -rf ~/.config/nvim/
rm -rf ~/.local/share/nvim/
rm -rf ~/.local/state/nvim/
git clone https://github.com/cmdecker95/nvim ~/.config/nvim

# qmk
qmk setup cmdecker95/qmk_firmware -y
qmk config user.keyboard=planck/rev7
qmk config user.keymap=cmdecker95

echo "Successfully configured dotfiles!"

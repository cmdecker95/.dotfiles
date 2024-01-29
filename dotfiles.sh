echo "Configuring dotfiles..."

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file ~/.dotfiles/Brewfile

# Shell
rm ~/.aliases
rm ~/.zprofile
rm ~/.zshrc
ln -s ~/.dotfiles/.aliases ~/.aliases
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc

# Git
rm ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm ~/.tmux.conf
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Neovim
rm -rf ~/.config/nvim/
rm -rf ~/.local/share/nvim/
rm -rf ~/.local/state/nvim/
git clone https://github.com/cmdecker95/nvim ~/.config/nvim

echo "Successfully configured dotfiles!"

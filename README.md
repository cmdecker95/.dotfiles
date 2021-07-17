# Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Setup SSH connection with GitHub.

```zsh
# Generate SSH key
# 1. Press `Enter` when prompted for file name.
# 2. Enter passphrase for key.
ssh-keygen -t ed25519 -C "cmdecker95@gmail.com"

# Start SSH Agent in the background.
eval "$(ssh-agent -s)"

# Create and open SSH config file.
touch ~/.ssh/config
open ~/.ssh/config

# Paste this into the SSH config file:
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519

# Add SSH key to SSH Agent
ssh-add -K ~/.ssh/id_ed25519

# Copy public SSH key to clipboard.
pbcopy < ~/.ssh/id_ed25519.pub

# Paste SSH key in the "Key" field here:
GitHub > Settings > SSH and GPG keys >
New SSH key

# Click "Add SSH key" and enter passphrase.
```

3. Clone repo into new hidden directory.

```zsh
git clone git@github.com:cmdecker95/.dotfiles.git
```

4. Create symlinks on the home directory to the real files in the repo.

```zsh
ln -s ~/.dotfiles/<filename> ~/<filename>
```

5. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```

# New Mac? 👨🏽‍💻

Follow these steps to **automatically install all your applications** on a new Mac!

> #### These steps assume that you have a `.dotfiles` repo on your own GitHub account.
> If you don't already have one, **fork this repo**, and customize the settings to your liking!
> I recommend that you create your own Brewfile by running `brew bundle dump`.
> #### New to [Homebrew](https://brew.sh)?
> It's a _package manager_ to neatly and efficiently install apps to MacOS (or Linux). No more "drag to install" prompts!

### Install the Apple CLT → Git 🔓

```Bash
xcode-select --install
```

### Connect to GitHub → repos 🔓

```Bash
# Generate SSH key
# 1. Press `Enter` when prompted for file name.
# 2. Enter passphrase for key.
ssh-keygen -t ed25519 -C "your.email@here.com"
```

```Bash
# Start SSH Agent in the background.
eval "$(ssh-agent -s)"
```

```Bash
# Create and open SSH config file.
touch ~/.ssh/config
open ~/.ssh/config
```

```Bash
# Paste this into the SSH config file:
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

```Bash
# Add SSH key to SSH Agent
ssh-add -K ~/.ssh/id_ed25519

# Successfully created a new SSH key! ✅
```

```Bash
# Copy public SSH key to clipboard.
pbcopy < ~/.ssh/id_ed25519.pub
```

```Bash
# Paste SSH key in the "Key" field here:
# GitHub > Settings > SSH and GPG keys > New SSH key
# Click "Add SSH key" and enter passphrase.

# Successfully connected remote access to GitHub! ✅
```

### Configure Terminal → style 🔓

```Bash
# Configure Git globals
git config --global user.name "Your Name"
git config --global user.email "your.email@here.com"

# Clone your repo
git clone git@github.com:<github_user>/.dotfiles.git
```

```Bash
# Symlink resources from repo to user root
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zprofile ~/.zprofile
```

```Bash
# > My Background
# - Grayscale Slider
# - Brightness: 20%
# - Opacity: 80%
# - Blur: 20%
```

```Bash
# > My Fonts
# - FiraCode Nerd Font Mono
# - Hack Nerd Font Mono
```

```Bash
# > My Cursor
# - Blinking Cursor
# - Block
```

```Bash
# Now restart Terminal to see your changes.

# Successfully cloned repo and styled Terminal! ✅
```

### Install Homebrew → apps 🔓

```Bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```Bash
# Add Homebrew to PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/<your_user>/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

```Bash
# Install everything
brew bundle --file ~/.dotfiles/Brewfile

# Successfully bootstrapped your new Mac! ✅
```

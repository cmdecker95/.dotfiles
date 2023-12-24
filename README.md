# `.dotfiles`

## 1. Install the Apple Command Line Tools (CLT)

```sh
xcode-select --install
```

## 2. Connect to GitHub

### Generate SSH key

- Press `Enter` when prompted for file name.
- Enter passphrase for key.

```sh
ssh-keygen -t ed25519 -C "50999401+cmdecker95@users.noreply.github.com"
ssh-agent -s
cat <<EOL > ~/.ssh/config
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
EOL
ssh-add -K ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
```

### Paste SSH key in the "Key" field here:

- GitHub > Settings > SSH and GPG keys > New SSH key
- Click "Add SSH key" and enter passphrase.

## 3. Clone your `.dotfiles`

### Configure Git globals (these are temporary)

```sh
git config --global user.name "Christian Decker"
git config --global user.email "50999401+cmdecker95@users.noreply.github.com"
```

### Clone your repo

```sh
git clone https://github.com/cmdecker95/.dotfiles.git ~/.dotfiles
```

### Symlink resources from repo to user root

```sh
rm ~/.gitconfig
rm ~/.zprofile
rm ~/.zshrc

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```

## 4. Homebrew

### Install Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Add Homebrew to PATH

```sh
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Install everything

```sh
brew bundle --file ~/.dotfiles/Brewfile
```
